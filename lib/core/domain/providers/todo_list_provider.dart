import 'dart:async';
import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:ya_todo_app/core/data/local_data_source/local_data_source_i.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/api_exception.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/list_repository_provider.dart';
import 'package:ya_todo_app/core/domain/providers/local_db_provider.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repository_i.dart';

/// provider for TodoListNotifier
/// contains list of to dos
final todoListProvider = StateNotifierProvider<_TodoListNotifier, List<Todo>>(
  (ref) => _TodoListNotifier(
    ref.watch(localDbProvider),
    ref.watch(listRepositoryProvider),
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
  _TodoListNotifier(this._localDb, this._listRepositoryI)
      : super(_localDb.getData()) {
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
    unawaited(_listRepositoryI.updateList(state));
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
    unawaited(_listRepositoryI.updateList(state));
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
    unawaited(_listRepositoryI.updateList(state));
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
    unawaited(_listRepositoryI.updateList(state));
  }

  void _dataFromApi(ListResponce response) {
    log('new data from api: $response');
  }

  void _errorFromApi(ApiException exc) {
    log('error in todo list provider from api: ${exc.message}');
  }

  @override
  void dispose() {
    _streamSub.cancel();
    super.dispose();
  }
}
