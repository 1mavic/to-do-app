import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/models/status.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/features/todo_list/domain/providers/filter_provider.dart';
import 'package:ya_todo_app/core/domain/providers/todo_list_provider.dart';

final filteredListProvider = Provider<List<Todo>>((ref) {
  final currentFilter = ref.watch(filterProvider);
  final list = ref.watch(todoListProvider);

  return switch (currentFilter) {
    Filter.all => list,
    Filter.notDone => list.where((element) => element.done == false).toList(),
  };
});
