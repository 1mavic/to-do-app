import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/flavors/app_flavor.dart';
import 'package:ya_todo_app/config/remote_config/remote_config.dart';
import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/data/api_client/api_interceptors/queued_interceptor.dart';
import 'package:ya_todo_app/core/data/api_client/api_interceptors/revision_interceptor.dart';
import 'package:ya_todo_app/core/data/local_data_source/hive_data_source.dart';
import 'package:ya_todo_app/core/data/repository/revision_repository.dart';
import 'package:ya_todo_app/core/di/di_container.dart';
import 'package:ya_todo_app/core/domain/providers/api_client_provider.dart';
import 'package:ya_todo_app/core/domain/providers/config_provider.dart';
import 'package:ya_todo_app/core/domain/providers/local_db_provider.dart';
import 'package:ya_todo_app/core/domain/providers/revision_provider.dart';
import 'package:ya_todo_app/core/widgets/fatal_error_screen.dart';
import 'package:ya_todo_app/firebase_options.dart';
import 'package:ya_todo_app/my_app.dart';

// TODO(macegora): add animation with todo
// TODO(macegora): init firebase config options
// TODO(macegora): build in actions and deploy to app distribution

void main() {
  unawaited(
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform(AppFlavor.dev));

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
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
        final config = AppRemoteConfigClass(
          diContainer.appLogger,
        );
        await config.initialize();

        runApp(
          ProviderScope(
            observers: [
              diContainer.appLogger,
            ],
            overrides: [
              configProvider.overrideWithValue(config),
              apiClientProvider.overrideWithValue(apiClient),
              localDbProvider.overrideWithValue(localDb),
              revisionProvider.overrideWithValue(dataRev)
            ],
            child: const MyApp(
              flavor: AppFlavor.dev,
            ),
          ),
        );

        FlutterError.onError =
            FirebaseCrashlytics.instance.recordFlutterFatalError;
      },
      (Object error, StackTrace stack) {
        FirebaseCrashlytics.instance.recordError(error, stack);
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
