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

abstract class TodoListNotifierI extends StateNotifier<List<Todo>> {
  TodoListNotifierI(super.state);
}

class _TodoListNotifier extends StateNotifier<List<Todo>> {
  _TodoListNotifier(this._localDb) : super(_localDb.getData());

  final LocalDataSourceI _localDb;

  /// add new to do to list
  void add(Todo todo) {
    state = [
      ...state,
      todo.copyWith(
        id: const Uuid().toString(),
      ),
    ];
    _localDb.saveData(state);
  }

  /// remove to do from list
  void remove(String? id) {
    state = state
        .where(
          (element) => element.id != id,
        )
        .toList();
    _localDb.saveData(state);
  }

  /// change to do complete/not completed property
  void toggle(String? id) {
    state = [
      for (final todo in state)
        if (todo.id == id) todo.copyWith(done: !todo.done) else todo,
    ];
    _localDb.saveData(state);
  }

  /// edit to do
  void edit(Todo newTodo) {
    state = [
      for (final todo in state)
        if (todo.id == newTodo.id) newTodo else todo,
    ];
    _localDb.saveData(state);
  }
}
