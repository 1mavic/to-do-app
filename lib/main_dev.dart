import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/themes/app_themes.dart';
import 'package:ya_todo_app/features/todo_list/ui/todo_list_screen.dart';
import 'package:ya_todo_app/generated/l10n.dart';
import 'package:ya_todo_app/navigation/router_delegate.dart';
import 'package:ya_todo_app/navigation/router_parser.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

/// application entry point
class MyApp extends StatelessWidget {
  /// application entry point
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final routerDelegate = AppRouterDelegate();
    // final routerInformationParser = RouterInformationParser();

    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      home: const TodoListWidget(),
      // routerDelegate: routerDelegate,
      // routeInformationParser: routerInformationParser,
    );
  }
}
