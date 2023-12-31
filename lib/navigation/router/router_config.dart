import 'package:ya_todo_app/features/crete_edit_todo/ui/create_todo_screen.dart';
import 'package:ya_todo_app/features/todo_list/ui/todo_list_screen.dart';

/// application route config
class RouteConfig {
  RouteConfig.list()
      : pageType = TodoListWidget,
        param = null,
        isUnknown = false;

  RouteConfig.detail(String? id)
      : pageType = CreateTodoScreen,
        param = id ?? '',
        isUnknown = false;

  final Type? pageType;
  final String? param;
  final bool isUnknown;
}
