import 'package:hooks_riverpod/hooks_riverpod.dart';

final revisionProvider = Provider<DataRevision>((ref) => DataRevision());

class DataRevision {
  DataRevision();

  int _revision = 0;

  int get currentRevision => _revision;

  void changeRevision(int newResion) {
    _revision = newResion;
  }
}
