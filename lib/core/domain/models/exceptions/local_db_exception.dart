import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/const/app_strings.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/app_exception.dart';
part 'local_db_exception.freezed.dart';
part 'local_db_exception.g.dart';

/// Exception class for local db
@freezed
class LocalDdException with _$LocalDdException implements AppException {
  /// error on local db initialization
  const factory LocalDdException.initException({
    required String stackTrace,
    String? message,
    DateTime? timeStamp,
  }) = _InitException;

  /// error on reading local db
  const factory LocalDdException.readException({
    required String stackTrace,
    String? message,
    DateTime? timeStamp,
  }) = _ReadException;

  /// error on writing local db
  const factory LocalDdException.writeException({
    required String stackTrace,
    String? message,
    DateTime? timeStamp,
  }) = _WriteException;

  const LocalDdException._();

  /// from json
  factory LocalDdException.fromJson(Map<String, Object?> json) =>
      _$LocalDdExceptionFromJson(json);

  @override
  String get errorMsg => map(
        initException: (_) => ErrorStrings.dbInit,
        readException: (_) => ErrorStrings.dbReadWrite,
        writeException: (_) => ErrorStrings.dbReadWrite,
      );
}
