import 'package:hooks_riverpod/hooks_riverpod.dart';

/// provider for revision data
final revisionProvider = Provider<DataRevision>((ref) => DataRevision());

/// revision data class
class DataRevision {
  /// revision data class
  DataRevision();

  /// current local revision number
  int revision = 0;
}
