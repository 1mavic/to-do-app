import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ya_todo_app/config/themes/app_themes.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/create_todo_screen.dart';
import 'package:ya_todo_app/generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

/// application entry point
class MyApp extends StatelessWidget {
  /// application entry point
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
      home: const CreateTodoScreen(),
    );
  }
}
