import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/themes/app_themes.dart';
import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/data/local_data_source/hive_data_source.dart';
import 'package:ya_todo_app/core/data/models/todo_data_model.dart';
import 'package:ya_todo_app/core/di/di_container.dart';
import 'package:ya_todo_app/core/domain/models/priority.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/api_client_provider.dart';
import 'package:ya_todo_app/core/domain/providers/local_db_provider.dart';
import 'package:ya_todo_app/generated/l10n.dart';
import 'package:ya_todo_app/navigation/navigation.dart';

void main() {
  unawaited(
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        HttpOverrides.global = MyHttpOverrides();
        // final container = ProviderContainer(
        //   observers: [
        //     diContainer.appLogger,
        //   ],
        // );
        final localDb = HiveDataSource();
        final apiClient = ApiClient();
        await localDb.initialize();
        const baseUrl = String.fromEnvironment('URL');
        const token = String.fromEnvironment('token');
        apiClient.init(baseUrl: baseUrl, token: token);
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        runApp(
          ProviderScope(
            observers: [
              diContainer.appLogger,
            ],
            overrides: [
              apiClientProvider.overrideWithValue(apiClient),
              localDbProvider.overrideWithValue(localDb),
            ],
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

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
