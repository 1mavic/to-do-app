import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/models/importance.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

final todoListProvider = StateNotifierProvider<TodoListNotifier, List<Todo>>(
  (ref) => TodoListNotifier(),
);

class TodoListNotifier extends StateNotifier<List<Todo>> {
  TodoListNotifier()
      : super(
          <Todo>[
            Todo(
              id: 0,
              text: " asdas da sdasf sdgasdg",
              priority: Priority.no,
              deadline: DateTime.now(),
              done: false,
            ),
            Todo(
              id: 1,
              text:
                  " asdas da sdasf sd asdfkl a;sdjf askljdfl asdjkf as;dlfj asdf asdfa sdfasdfasdfasdfgasdg",
              priority: Priority.no,
              deadline: DateTime.now().add(Duration(days: 3)),
              done: true,
            ),
            Todo(
              id: 2,
              text: " asdas da sdasf sdgasdg asdf ksjadfja sdf",
              priority: Priority.hight,
              deadline: null,
              done: false,
            ),
            Todo(
              id: 3,
              text: " asdas d sadfj sadf asdf a sdasf sdgasdg",
              priority: Priority.low,
              deadline: DateTime.now(),
              done: false,
            ),
          ],
        );

  void add(Todo todo) {
    state = [
      ...state,
      todo.copyWith(
        id: state.isEmpty ? 0 : (state.last.id ?? 0) + 1,
      ),
    ];
  }

  void remove(int id) {
    state = state
        .where(
          (element) => element.id != id,
        )
        .toList();
  }

  void toggle(int? id) {
    state = [
      for (final todo in state)
        if (todo.id == id) todo.copyWith(done: !todo.done) else todo,
    ];
  }

  void edit(Todo newTodo) {
    state = [
      for (final todo in state)
        if (todo.id == newTodo.id) newTodo else todo,
    ];
  }
}
