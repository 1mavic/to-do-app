import 'package:hooks_riverpod/hooks_riverpod.dart';

/// provider for revision data
final revisionProvider = Provider<DataRevision>((ref) => DataRevision());

/// revision data class
class DataRevision {
  /// revision data class
  DataRevision();

  /// current local revision number
  int revision = 0;

  // /// get last updated rivision number
  // int get currentRevision => _revision;

  // /// set new  rivision number
  // set currentRevision(int newResion) {
  //   _revision = newResion;
  // }
}
