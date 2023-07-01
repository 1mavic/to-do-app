import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/models/data_source_enum.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/service_manager_provider.dart';
import 'package:ya_todo_app/core/domain/serivces/data_service_manager.dart';

/// provider for TodoListNotifier
/// contains list of to dos
final todoListProvider = StateNotifierProvider<_TodoListNotifier, List<Todo>>(
  (ref) => _TodoListNotifier(
    ref.watch(serviceManagerProvider),
  ),
);

class _TodoListNotifier extends StateNotifier<List<Todo>> {
  final DataServiceManager _manager;
  late final StreamSubscription<List<Todo>> _subscription;
  _TodoListNotifier(
    this._manager,
  ) : super(_manager.getInitialData()) {
    _subscription = _manager.todoStream.listen(
      (todoList) {
        state = List.from(todoList);
      },
      cancelOnError: false,
    );
  }

  void add(Todo newTodo) {
    _manager.add(newTodo);
  }

  /// remove to do from list
  void remove(String? id) {
    _manager.remove(id);
  }

  /// change to do complete/not completed property
  void toggle(String? id) {
    _manager.toggle(id);
  }

  /// edit to do
  void edit(Todo todo) {
    _manager.edit(todo);
  }

  void priorityLocal() {
    _manager.mergeLsts(DataSource.local);
  }

  void priorityRemote() {
    _manager.mergeLsts(DataSource.api);
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
