import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/analytics/analytics_event.dart';
import 'package:ya_todo_app/config/analytics/app_analytics.dart';
import 'package:ya_todo_app/core/di/di_container.dart';
import 'package:ya_todo_app/core/domain/models/data_source_enum.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/service_manager_provider.dart';
import 'package:ya_todo_app/core/domain/serivces/data_service_manager.dart';

/// provider for TodoListNotifier
/// contains list of to dos
final todoListProvider = StateNotifierProvider<TodoListNotifier, List<Todo>>(
  (ref) => TodoListNotifier(
    ref.watch(serviceManagerProvider),
    diContainer.appAnalitics,
  ),
);

class TodoListNotifier extends StateNotifier<List<Todo>> {
  final DataServiceManager _manager;
  final AppAnalytics _analytics;
  late final StreamSubscription<List<Todo>> _subscription;
  TodoListNotifier(
    this._manager,
    this._analytics,
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
    _analytics.logTodoEvent(TodoEvent.create, newTodo.id);
  }

  /// remove to do from list
  void remove(String? id) {
    _manager.remove(id);
    _analytics.logTodoEvent(TodoEvent.remove, id);
  }

  /// change to do complete/not completed property
  void toggle(String? id) {
    _manager.toggle(id);
    _analytics.logTodoEvent(TodoEvent.checked, id);
  }

  /// edit to do
  void edit(Todo todo) {
    _manager.edit(todo);
    _analytics.logTodoEvent(TodoEvent.edit, todo.id);
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
