import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/models/sync_model.dart';

/// provider with syncronization value. if data is sync from api return true
final syncProvider = StateNotifierProvider<SyncNotifier, SyncData>(
  (ref) => SyncNotifier(),
);

/// notifier with sync state
class SyncNotifier extends StateNotifier<SyncData> {
  /// notifier with sync state
  SyncNotifier() : super(const SyncData());

  /// data is in sync process
  void inProcess() {
    state = state.copyWith(syncInProcess: true);
  }

  /// sync was done
  void done() {
    state = state.copyWith(syncInProcess: false);
  }
}
