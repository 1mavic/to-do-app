import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/themes/app_themes.dart';
import 'package:ya_todo_app/core/di/di_container.dart';
import 'package:ya_todo_app/core/domain/providers/local_db_provider.dart';
import 'package:ya_todo_app/generated/l10n.dart';
import 'package:ya_todo_app/navigation/navigation.dart';

void main() {
  unawaited(
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        final container = ProviderContainer(
          observers: [
            diContainer.appLogger,
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
    final routerDelegate = AppRouterDelegate(
      diContainer.appLogger,
    );
    final routerInformationParser = AppRouteInformationParser();

    return MaterialApp.router(
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
    );
  }
}
