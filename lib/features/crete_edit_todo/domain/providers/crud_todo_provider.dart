// ignore_for_file: use_setters_to_change_properties

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/todo_list_provider.dart';

/// provider for single to do value and making CRUD
final todoProvider = StateNotifierProvider.family.autoDispose<_ToDoNotifier, Todo, String?>(
  (ref, id) => _ToDoNotifier(
    ref.watch(todoListProvider).firstWhere(
          (element) => element.id == id,
          orElse: Todo.new,
        ),
  ),
);

class _ToDoNotifier extends StateNotifier<Todo> {
  _ToDoNotifier(super.todo);

  void edit(Todo todo) {
    state = todo;
  }
}
