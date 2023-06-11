import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/models/status.dart';

/// provider with current filter value
final filterProvider = StateNotifierProvider<_FilterNotifier, Filter>(
  (ref) => _FilterNotifier(),
);

class _FilterNotifier extends StateNotifier<Filter> {
  _FilterNotifier() : super(Filter.notDone);

  void change() {
    state = switch (state) {
      Filter.notDone => Filter.all,
      Filter.all => Filter.notDone,
    };
  }
}
