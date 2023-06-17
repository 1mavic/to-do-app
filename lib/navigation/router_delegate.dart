// ignore_for_file: public_member_api_docs

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ya_todo_app/core/domain/serivces/app_loger.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/create_todo_screen.dart';
import 'package:ya_todo_app/features/todo_list/ui/todo_list_screen.dart';
import 'package:ya_todo_app/navigation/router_config.dart';

extension RouteExtension on BuildContext {
  Future<void> navigateTo(RouteConfig path) async {
    (Router.of(this).routerDelegate as AppRouterDelegate).push(path);
  }

  Future<bool> pop() async {
    return (Router.of(this).routerDelegate as AppRouterDelegate).popRoute();
  }

  Future<bool> popUntil(RouteConfig path) async {
    final deletgate = Router.of(this).routerDelegate as AppRouterDelegate;
    while (deletgate.routeConfigs.last.pageType != path.pageType!) {
      await pop();
    }

    return true;
  }
}

class AppRouterDelegate extends RouterDelegate<RouteConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<RouteConfig> {
  AppRouterDelegate(this._logger);
  final AppLogger _logger;

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  List<RouteConfig> _routeConfigs = [];
  List<RouteConfig> get routeConfigs => _routeConfigs;

  bool _canPop = true;

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  bool get canPop {
    if (_canPop == false) return false;

    return _routeConfigs.isNotEmpty;
  }

  set canPop(bool canPop) => _canPop = canPop;

  @override
  RouteConfig? get currentConfiguration =>
      routeConfigs.isNotEmpty ? routeConfigs.last : null;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      pages: [
        if (routeConfigs.isEmpty) PageBuilder(RouteConfig.list()).page as Page,
        for (RouteConfig path in routeConfigs) PageBuilder(path).page as Page,
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        if (canPop) {
          pop();
        }
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(
    RouteConfig configuration,
  ) async {
    if (_canPop == false) return SynchronousFuture(null);
    if (configuration == currentConfiguration) return SynchronousFuture(null);
    _routeConfigs = _setNewRouteHistory(_routeConfigs, configuration);

    notifyListeners();
    return SynchronousFuture(null);
  }

  List<RouteConfig> _setNewRouteHistory(
    List<RouteConfig> routes,
    RouteConfig newRoute,
  ) {
    final pathsHolder = [...routes];
    for (final path in routes) {
      if (path.pageType == newRoute.pageType) {
        final index = routes.indexOf(path);
        final count = routes.length;
        for (var i = index; i < count - 1; i++) {
          pathsHolder.removeLast();
        }
        return pathsHolder;
      }
    }

    pathsHolder.add(newRoute);

    return pathsHolder;
  }

  void push(RouteConfig path) {
    _logger.logNavigation(
      '''push to ${path.pageType} ${path.param != null ? 'id:${path.param}' : ''}''',
    );
    _routeConfigs.add(path);
    notifyListeners();
  }

  void pop() {
    _logger.logNavigation('${_routeConfigs.last.pageType} pop');
    _routeConfigs.removeLast();
    notifyListeners();
  }
}

class PageBuilder {
  PageBuilder(this.homeRoutePath);
  Page<MaterialPage<dynamic>> getPage(RouteConfig path) {
    switch (path.pageType) {
      case TodoListWidget:
        return const MaterialPage(child: TodoListWidget());
      case CreateTodoScreen:
        return MaterialPage(
          key: ValueKey('detail ${path.param}'),
          child: CreateTodoScreen(
            id: path.param ?? '',
          ),
        );

      default:
        return const MaterialPage(child: TodoListWidget());
    }
  }

  final RouteConfig homeRoutePath;

  dynamic get page => getPage(homeRoutePath);
}
