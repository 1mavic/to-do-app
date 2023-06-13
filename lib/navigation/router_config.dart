// ignore_for_file: public_member_api_docs

import 'package:ya_todo_app/features/crete_edit_todo/ui/create_todo_screen.dart';
import 'package:ya_todo_app/features/todo_list/ui/todo_list_screen.dart';

/// application route config
class RouteConfig {
  RouteConfig.list()
      : pageType = TodoListWidget,
        param = null,
        isUnknown = false;

  RouteConfig.detail(int? id)
      : pageType = CreateTodoScreen,
        param = (id ?? '').toString(),
        isUnknown = false;

  final Type? pageType;
  final String? param;
  final bool isUnknown;
}
