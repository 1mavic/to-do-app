import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/di/di_container.dart';
import 'package:ya_todo_app/core/domain/providers/list_repository_provider.dart';
import 'package:ya_todo_app/core/domain/providers/local_db_provider.dart';
import 'package:ya_todo_app/core/domain/providers/overlay_service_provider.dart';
import 'package:ya_todo_app/core/domain/serivces/data_service_manager.dart';

final serviceManagerProvider = Provider<DataServiceManager>(
  (ref) => DataServiceManager(
    ref.watch(localDbProvider),
    ref.watch(listRepositoryProvider),
    ref.watch(overlayProvider),
    diContainer.diffUseCase,
    diContainer.mergeUseCase,
  ),
);
