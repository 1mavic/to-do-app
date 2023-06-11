import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/providers/todo_list_provider.dart';

/// provider with done to do counter
final doneCounterProvider = Provider<int>(
  (ref) => ref.watch(todoListProvider).where((element) => element.done).length,
);
