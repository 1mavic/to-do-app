import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/providers/api_client_provider.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repository_i.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repostitory_impl.dart';

/// provider for ListRepositoryI
final listRepositoryProvider = Provider<ListRepositoryI>(
  (ref) => ListRepositoryImpl(
    ref.watch(apiClientProvider),
  ),
);
