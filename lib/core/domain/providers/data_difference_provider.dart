import 'package:hooks_riverpod/hooks_riverpod.dart';

/// provider for datadiff notifier
final dataDiffProvider = StateNotifierProvider<DataDiffNotifier, bool>(
  (ref) => DataDiffNotifier(),
);

/// data difference notifier. if local saved data and api have difference return true.
class DataDiffNotifier extends StateNotifier<bool> {
  DataDiffNotifier() : super(false);

  void hasDiff() {
    state = true;
  }

  void noDiff() {
    state = false;
  }
}
