import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/providers/api_client_provider.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repostitory_impl.dart';

final listRepositoryProvider = Provider<ListRepositoryImpl>(
  (ref) => ListRepositoryImpl(
    ref.watch(apiClientProvider),
  ),
);
