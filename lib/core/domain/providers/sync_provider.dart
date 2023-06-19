import 'package:hooks_riverpod/hooks_riverpod.dart';

/// provider with syncronization value. if data is sync from api return true
final syncProvider = StateNotifierProvider<SyncNotifier, bool>(
  (ref) => SyncNotifier(),
);

/// notifier with sync state
class SyncNotifier extends StateNotifier<bool> {
  /// notifier with sync state
  SyncNotifier() : super(false);

  /// data is in sync process
  void inProcess() {
    state = true;
  }

  /// sync was done
  void done() {
    state = false;
  }
}
