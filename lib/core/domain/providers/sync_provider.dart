import 'package:hooks_riverpod/hooks_riverpod.dart';

/// provider with syncronization value. if data is sync from api return true
final syncProvider = StateProvider<bool>((ref) => false);
