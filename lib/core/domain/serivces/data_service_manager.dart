import 'dart:async';
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';
import 'package:ya_todo_app/core/data/local_data_source/local_data_source_i.dart';
import 'package:ya_todo_app/core/domain/models/data_source_enum.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/api_exception.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/local_db_exception.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/unexpected_exception.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/data_difference_provider.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repository_i.dart';
import 'package:ya_todo_app/core/domain/use_cases/data_diff.dart';
import 'package:ya_todo_app/core/domain/use_cases/merge_lists.dart';
import 'package:ya_todo_app/core/widgets/overlay_service.dart';

class DataServiceManager {
  DataServiceManager(
    this._localDb,
    this._listRepositoryI,
    this._overlayService,
    this._dataDiffNotifier,
    this._diffUseCase,
    this._mergeUseCase,
  ) {
    _controller = StreamController<List<Todo>>();
    _repositorySub = _listRepositoryI.responseStream.listen(
      (event) => _dataFromApi(event),
      onError: (error) => _errorFromApi(error),
      cancelOnError: false,
    );
  }
  final List<Todo> _currentList = [];
  final List<Todo> _apiList = [];
  final LocalDataSourceI _localDb;
  final ListRepositoryI _listRepositoryI;
  final OverlayService _overlayService;
  final DataDiffNotifier _dataDiffNotifier;
  final DataDiff _diffUseCase;
  final MergeLists _mergeUseCase;
  CancelToken? _cancelToken;
  late final StreamSubscription<ListResponce> _repositorySub;
  Stream<List<Todo>> get todoStream => _controller.stream;
  late StreamController<List<Todo>> _controller;

  List<Todo> getInitialData() {
    try {
      unawaited(_listRepositoryI.getList());
      final storedData = _localDb.getData();
      _currentList.addAll(storedData);
      return storedData;
    } on LocalDdException catch (e) {
      _overlayService.showErrorModal(e);
      return [];
    } catch (e, stackTrace) {
      _overlayService.showErrorModal(UnexpectedException(
        stackTrace: stackTrace.toString(),
        timeStamp: DateTime.now(),
      ));
      return [];
    }
  }

  Future<void> add(Todo todo) async {
    _currentList.add(todo.copyWith(
      id: const Uuid().v4(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      changedAt: DateTime.now().millisecondsSinceEpoch,
    ));

    _cancelToken?.cancel();
    _cancelToken = CancelToken();

    unawaited(_localDb.saveData(_currentList));
    unawaited(
      _listRepositoryI.updateList(
        todos: _currentList,
        afterSync: true,
        cancelToken: _cancelToken,
      ),
    );
    _controller.add(_currentList);
  }

  /// remove to do from list
  Future<void> remove(String? id) async {
    _currentList.removeWhere(
      (element) => element.id == id,
    );

    unawaited(_localDb.saveData(_currentList));
    _cancelToken?.cancel();
    _cancelToken = CancelToken();
    unawaited(
      _listRepositoryI.updateList(
        todos: _currentList,
        afterSync: true,
        cancelToken: _cancelToken,
      ),
    );

    _controller.add(_currentList);
  }

  /// change to do complete/not completed property
  Future<void> toggle(String? id) async {
    final newList = [
      for (final todo in _currentList)
        if (todo.id == id)
          todo.copyWith(
            done: !todo.done,
            changedAt: DateTime.now().millisecondsSinceEpoch,
          )
        else
          todo,
    ];
    _currentList
      ..clear()
      ..addAll(newList);
    unawaited(_localDb.saveData(_currentList));
    _cancelToken?.cancel();
    _cancelToken = CancelToken();
    unawaited(
      _listRepositoryI.updateList(
        todos: _currentList,
        afterSync: true,
        cancelToken: _cancelToken,
      ),
    );
    _controller.add(_currentList);
  }

  /// edit to do
  Future<void> edit(Todo newTodo) async {
    final newList = [
      for (final todo in _currentList)
        if (todo.id == newTodo.id)
          newTodo.copyWith(
            changedAt: DateTime.now().millisecondsSinceEpoch,
          )
        else
          todo,
    ];
    _currentList
      ..clear()
      ..addAll(newList);
    unawaited(_localDb.saveData(_currentList));
    _cancelToken?.cancel();
    _cancelToken = CancelToken();
    unawaited(
      _listRepositoryI.updateList(
        todos: _currentList,
        cancelToken: _cancelToken,
      ),
    );
    _controller.add(_currentList);
  }

  /// handles data from api repository
  Future<void> _dataFromApi(ListResponce response) async {
    final apiList = response.list;

    if (apiList.isEmpty) return;

    if (_currentList.isEmpty) {
      _currentList.addAll(apiList);
      _controller.add(_currentList);
      unawaited(_localDb.saveData(_currentList));
      return;
    }

    final diffResult =
        await _diffUseCase.call(local: _currentList, api: apiList);

    if (diffResult) {
      _apiList.clear();
      _apiList.addAll(apiList);
      _dataDiffNotifier.hasDiff();
    }
  }

  /// merge lists from api and local
  Future<void> mergeLsts(DataSource prioritySource) async {
    final newList =
        await _mergeUseCase.call(_currentList, _apiList, prioritySource);
    _apiList.clear();
    _currentList
      ..clear()
      ..addAll(newList);
    _controller.add(_currentList);

    _dataDiffNotifier.noDiff();
    _cancelToken?.cancel();
    _cancelToken = CancelToken();

    unawaited(_localDb.saveData(_currentList));
    unawaited(
      _listRepositoryI.updateList(
        todos: _currentList,
        afterSync: true,
        cancelToken: _cancelToken,
      ),
    );
  }

  /// shows error from api repository
  void _errorFromApi(ApiException exc) {
    _overlayService.showErrorModal(exc);
  }

  /// dispose service and release resources
  dispose() {
    _repositorySub.cancel();
    _controller.close();
  }
}
