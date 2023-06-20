import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/themes/app_themes.dart';
import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/data/api_client/api_interceptors/queued_interceptor.dart';
import 'package:ya_todo_app/core/data/api_client/api_interceptors/revision_interceptor.dart';
import 'package:ya_todo_app/core/data/local_data_source/hive_data_source.dart';
import 'package:ya_todo_app/core/data/repository/revision_repository.dart';
import 'package:ya_todo_app/core/di/di_container.dart';
import 'package:ya_todo_app/core/domain/providers/api_client_provider.dart';
import 'package:ya_todo_app/core/domain/providers/local_db_provider.dart';
import 'package:ya_todo_app/core/domain/providers/revision_provider.dart';
import 'package:ya_todo_app/core/widgets/fatal_error_screen.dart';
import 'package:ya_todo_app/generated/l10n.dart';
import 'package:ya_todo_app/navigation/navigation.dart';

void main() {
  unawaited(
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        HttpOverrides.global = MyHttpOverrides();
        final localDb = HiveDataSource();
        final apiClient = ApiClient(
          diContainer.appLogger,
        );
        await localDb.initialize();

        final dataRev = DataRevision();
        const baseUrl = String.fromEnvironment('URL');
        const token = String.fromEnvironment('token');
        if (baseUrl.isEmpty) {
          runApp(
            const FatalErrorScreen(),
          );
          return;
        }

        apiClient.init(
          baseUrl: baseUrl,
          token: token,
          customInterceptors: [
            RetryInterceptor(
              RevisionRepository(apiClient),
              dataRev,
              apiClient,
            ),
            RevisionInterceptor(dataRev)
          ],
        );
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
              revisionProvider.overrideWithValue(dataRev)
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
class MyApp extends StatefulWidget {
  /// application entry point
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final routerDelegate = AppRouterDelegate(
    diContainer.appLogger,
  );
  final routerInformationParser = AppRouteInformationParser();
  @override
  Widget build(BuildContext context) {
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

/// http overrride for bad cartificate
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
