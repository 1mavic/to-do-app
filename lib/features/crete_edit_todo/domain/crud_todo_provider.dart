import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/todo_list_provider.dart';

final todoProvider =
    StateNotifierProvider.family.autoDispose<ToDoNotifier, Todo, int?>(
  (ref, id) => ToDoNotifier(
    ref.watch(todoListProvider).firstWhere(
          (element) => element.id == id,
          orElse: Todo.new,
        ),
  ),
);

class ToDoNotifier extends StateNotifier<Todo> {
  ToDoNotifier(super.todo);

  void edit(Todo todo) {
    state = todo;
  }
}
