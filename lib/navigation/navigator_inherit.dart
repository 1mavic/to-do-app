import 'package:flutter/material.dart';
import 'package:ya_todo_app/navigation/navigator_manager.dart';

class AppNavigator extends InheritedWidget {
  const AppNavigator({
    required this.manager,
    required Widget child,
    super.key,
  }) : super(child: child);
  final NavigatorManager manager;

  // static AppNavigator? of(BuildContext context) {
  //   return context.dependOnInheritedWidgetOfExactType<AppNavigator>();
  // }

  static NavigatorManager? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppNavigator>()?.manager;
  }

  @override
  bool updateShouldNotify(AppNavigator oldWidget) {
    return true;
  }
}
