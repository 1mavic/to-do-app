import 'package:freezed_annotation/freezed_annotation.dart';
part 'sync_model.freezed.dart';
part 'sync_model.g.dart';

/// data model class for sync notifier
@freezed
class SyncData with _$SyncData {
  /// data model class for sync notifier
  const factory SyncData({
    @Default(false) bool syncInProcess,
  }) = _SyncData;

  const SyncData._();

  /// from json constr
  factory SyncData.fromJson(Map<String, Object?> json) =>
      _$SyncDataFromJson(json);
}
