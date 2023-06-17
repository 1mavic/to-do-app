import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/providers/api_client_provider.dart';
import 'package:ya_todo_app/features/crete_edit_todo/domain/repository/todo_repository.dart';
import 'package:ya_todo_app/features/crete_edit_todo/domain/repository/todo_repository_impl.dart';

final todoRepositoryProvider = Provider<TodoRepositoryI>(
  (ref) => TodoRepositoryImpl(
    ref.watch(apiClientProvider),
  ),
);
