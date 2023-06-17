import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:ya_todo_app/core/data/local_data_source/local_data_source_i.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/local_db_provider.dart';

/// provider for TodoListNotifier
/// contains list of to dos
final todoListProvider = StateNotifierProvider<_TodoListNotifier, List<Todo>>(
  (ref) => _TodoListNotifier(ref.watch(localDbProvider)),
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
}

class _TodoListNotifier extends StateNotifier<List<Todo>>
    implements TodoListNotifierI {
  _TodoListNotifier(this._localDb) : super(_localDb.getData());

  final LocalDataSourceI _localDb;

  @override
  Future<void> add(Todo todo) async {
    state = [
      ...state,
      todo.copyWith(
        id: const Uuid().v4(),
      ),
    ];
    unawaited(_localDb.saveData(state));
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
  }

  /// change to do complete/not completed property
  @override
  Future<void> toggle(String? id) async {
    state = [
      for (final todo in state)
        if (todo.id == id) todo.copyWith(done: !todo.done) else todo,
    ];
    unawaited(_localDb.saveData(state));
  }

  /// edit to do
  @override
  Future<void> edit(Todo newTodo) async {
    state = [
      for (final todo in state)
        if (todo.id == newTodo.id) newTodo else todo,
    ];
    unawaited(_localDb.saveData(state));
  }
}
