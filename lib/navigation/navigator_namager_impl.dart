import 'package:flutter/material.dart';
import 'package:ya_todo_app/navigation/navigator_manager.dart';

import 'router/navigation.dart';

class NavigatorManagerImpl implements NavigatorManager {
  final AppRouterDelegate _routerDelegate;
  final AppRouteInformationParser _informationParser;
  const NavigatorManagerImpl(this._routerDelegate, this._informationParser);

  @override
  RouterDelegate<RouteConfig> get instance => _routerDelegate;
  @override
  RouteInformationParser<Object> get informationParser => _informationParser;

  @override
  Future<dynamic> goBack() async {
    _routerDelegate.pop();
  }

  @override
  Future<dynamic> openTaskScreen(String? todoId) async {
    _routerDelegate.push(RouteConfig.detail(todoId));
  }
}
