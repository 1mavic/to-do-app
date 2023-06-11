import 'package:freezed_annotation/freezed_annotation.dart';
part 'local_db_exception.freezed.dart';
part 'local_db_exception.g.dart';

@freezed
class LocalDdException with _$LocalDdException implements Exception {
  const factory LocalDdException.initException({
    required String stackTrace,
    String? message,
    DateTime? timeStamp,
  }) = _InitException;

  const factory LocalDdException.readException({
    required String stackTrace,
    String? message,
    DateTime? timeStamp,
  }) = _ReadException;

  const factory LocalDdException.writeException({
    required String stackTrace,
    String? message,
    DateTime? timeStamp,
  }) = _WriteException;

  const LocalDdException._();

  factory LocalDdException.fromJson(Map<String, Object?> json) =>
      _$LocalDdExceptionFromJson(json);
}
