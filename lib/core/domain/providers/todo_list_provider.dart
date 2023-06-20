import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:ya_todo_app/core/data/local_data_source/local_data_source_i.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/api_exception.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/list_repository_provider.dart';
import 'package:ya_todo_app/core/domain/providers/local_db_provider.dart';
import 'package:ya_todo_app/core/domain/providers/overlay_service_provider.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repository_i.dart';
import 'package:ya_todo_app/core/widgets/overlay_service.dart';

/// provider for TodoListNotifier
/// contains list of to dos
final todoListProvider = StateNotifierProvider<_TodoListNotifier, List<Todo>>(
  (ref) => _TodoListNotifier(
    ref.watch(localDbProvider),
    ref.watch(listRepositoryProvider),
    ref.watch(overlayProvider),
  ),
);

/// interface for to-do list notifiers
abstract class TodoListNotifierI {
  /// interface for to-do list notifiers
  const TodoListNotifierI();

  /// add new to do to list
  Future<void> add(Todo todo);

  /// remove to do from list
  Future<void> remove(String? id);

  /// change to do complete/not completed property
  Future<void> toggle(String? id);

  /// edit to do
  Future<void> edit(Todo newTodo);

  /// dispose method
  void dispose();
}

class _TodoListNotifier extends StateNotifier<List<Todo>>
    implements TodoListNotifierI {
  _TodoListNotifier(
    this._localDb,
    this._listRepositoryI,
    this._overlayService,
  ) : super(_localDb.getData()) {
    _streamSub = _listRepositoryI.responseStream.listen(
      _dataFromApi,
      onError: (Object? e) {
        if (e is ApiException) {
          _errorFromApi(e);
        } else {
          _errorFromApi(
            ApiException.byError(
              e,
              StackTrace.current,
            ),
          );
        }
      },
      cancelOnError: false,
    );
    unawaited(_listRepositoryI.getList());
  }

  final LocalDataSourceI _localDb;
  final ListRepositoryI _listRepositoryI;
  final OverlayService _overlayService;

  late final StreamSubscription<ListResponce> _streamSub;

  @override
  Future<void> add(Todo todo) async {
    state = [
      ...state,
      todo.copyWith(
        id: const Uuid().v4(),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        changedAt: DateTime.now().millisecondsSinceEpoch,
      ),
    ];
    unawaited(_localDb.saveData(state));
    unawaited(
      _listRepositoryI.updateList(
        todos: state,
        afterSync: true,
      ),
    );
  }

  /// remove to do from list
  @override
  Future<void> remove(String? id) async {
    state = state
        .where(
          (element) => element.id != id,
        )
        .toList();
    unawaited(_localDb.saveData(state));
    unawaited(
      _listRepositoryI.updateList(
        todos: state,
        afterSync: true,
      ),
    );
  }

  /// change to do complete/not completed property
  @override
  Future<void> toggle(String? id) async {
    state = [
      for (final todo in state)
        if (todo.id == id)
          todo.copyWith(
            done: !todo.done,
            changedAt: DateTime.now().millisecondsSinceEpoch,
          )
        else
          todo,
    ];
    unawaited(_localDb.saveData(state));
    unawaited(
      _listRepositoryI.updateList(
        todos: state,
        afterSync: true,
      ),
    );
  }

  /// edit to do
  @override
  Future<void> edit(Todo newTodo) async {
    state = [
      for (final todo in state)
        if (todo.id == newTodo.id)
          newTodo.copyWith(
            changedAt: DateTime.now().millisecondsSinceEpoch,
          )
        else
          todo,
    ];
    unawaited(_localDb.saveData(state));
    unawaited(
      _listRepositoryI.updateList(
        todos: state,
      ),
    );
  }

  // TODO(macegora): better alg for merging lists
  void _dataFromApi(ListResponce response) {
    if (response.list.isEmpty) return;
    final ids = response.list.map((e) => e.id).toList();
    final addList =
        state.where((element) => !ids.contains(element.id)).toList();
    for (final apiTodo in response.list) {
      final index = state.indexWhere((localTodo) => localTodo.id == apiTodo.id);
      if (index != -1) {
        if ((state[index].changedAt ?? 0) > (apiTodo.changedAt ?? 0)) {
          addList.add(state[index]);
        } else {
          addList.add(apiTodo);
        }
      } else {
        addList.add(apiTodo);
      }
    }
    addList.sort((a, b) => (a.createdAt ?? 0).compareTo(b.createdAt ?? 0));
    state = addList;
    unawaited(_localDb.saveData(state));
    unawaited(
      _listRepositoryI.updateList(
        todos: state,
        afterSync: true,
      ),
    );
  }

  void _errorFromApi(ApiException exc) {
    _overlayService.showErrorModal(exc);
  }

  @override
  void dispose() {
    _streamSub.cancel();
    super.dispose();
  }
}
