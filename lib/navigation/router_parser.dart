// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/create_todo_screen.dart';
import 'package:ya_todo_app/features/todo_list/ui/todo_list_screen.dart';
import 'package:ya_todo_app/navigation/router_config.dart';

class AppRouteInformationParser extends RouteInformationParser<RouteConfig> {
  @override
  Future<RouteConfig> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    if (routeInformation.location == null) {
      RouteConfig.list();
    }
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isNotEmpty) {
      final remaining = uri.pathSegments.last;
      final first = uri.pathSegments.first;
      if (first == 'detail') {
        if (uri.pathSegments.length == 1) {
          return RouteConfig.detail(null);
        } else {
          return RouteConfig.detail(remaining);
        }
      }

      return RouteConfig.list();
    }

    return RouteConfig.list();
  }

  @override
  RouteInformation? restoreRouteInformation(RouteConfig configuration) {
    const error = RouteInformation(location: '/404');
    if (configuration.pageType == null) {
      return error;
    }
    switch (configuration.pageType!) {
      case TodoListWidget:
        return const RouteInformation(location: '/');
      case CreateTodoScreen:
        return RouteInformation(location: '/detail/${configuration.param}');

      default:
        return error;
    }
  }
}
