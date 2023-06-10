import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/models/status.dart';

final filterProvider = StateNotifierProvider<FilterNotifier, Filter>(
  (ref) => FilterNotifier(),
);

class FilterNotifier extends StateNotifier<Filter> {
  FilterNotifier() : super(Filter.notDone);

  void change() {
    state = switch (state) {
      Filter.notDone => Filter.all,
      Filter.all => Filter.notDone,
    };
  }
}
