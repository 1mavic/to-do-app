import 'package:flutter/material.dart';
import 'package:ya_todo_app/navigation/router/navigation.dart';

abstract class NavigatorManager {
  Future<dynamic> openTaskScreen(String? todoId);

  Future<dynamic> goBack();

  RouterDelegate<RouteConfig> get instance;
  RouteInformationParser<Object> get informationParser;
}
