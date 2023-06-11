import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/themes/app_themes.dart';
import 'package:ya_todo_app/core/domain/providers/local_db_provider.dart';
import 'package:ya_todo_app/core/domain/serivces/app_loger.dart';
import 'package:ya_todo_app/features/todo_list/ui/todo_list_screen.dart';
import 'package:ya_todo_app/generated/l10n.dart';

void main() {
  unawaited(
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        final container = ProviderContainer(
          observers: [
            const AppLogger(),
          ],
        );

        final prov = container.read(localDbProvider);
        await prov.initialize();
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        runApp(
          UncontrolledProviderScope(
            container: container,
            child: const MyApp(),
          ),
        );
      },
      (Object error, StackTrace stack) {
        log(
          '''
            error in root zone:
            error: $error,
            stack trace: $stack,
          ''',
        );
      },
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
