import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ya_todo_app/config/flavors/app_flavor.dart';
import 'package:ya_todo_app/config/flavors/flavor_provider.dart';
import 'package:ya_todo_app/config/themes/app_themes.dart';
import 'package:ya_todo_app/core/di/di_container.dart';
import 'package:ya_todo_app/generated/l10n.dart';
import 'package:ya_todo_app/navigation/router_delegate.dart';
import 'package:ya_todo_app/navigation/router_parser.dart';

/// application entry point
class MyApp extends StatefulWidget {
  /// application entry point
  const MyApp({
    required this.flavor,
    super.key,
  });
  final AppFlavor flavor;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final routerDelegate = AppRouterDelegate(
    diContainer.appLogger,
    diContainer.appAnalitics,
  );
  final routerInformationParser = AppRouteInformationParser();
  @override
  Widget build(BuildContext context) {
    return FlavorProvider(
      flavor: widget.flavor,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: routerInformationParser,
        routerDelegate: routerDelegate,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        darkTheme: AppTheme.darkTheme,
        theme: AppTheme.lightTheme,
        // home: const TodoListWidget(),
        // routerDelegate: routerDelegate,
        // routeInformationParser: routerInformationParser,
      ),
    );
  }
}
