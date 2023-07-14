import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/const/app_strings.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/app_exception.dart';
part 'local_db_exception.freezed.dart';

/// Exception class for local db
@freezed
class LocalDdException with _$LocalDdException implements AppException {
  /// error on local db initialization
  const factory LocalDdException.initException({
    required StackTrace stackTrace,
    String? message,
    DateTime? timeStamp,
  }) = _InitException;

  /// error on reading local db
  const factory LocalDdException.readException({
    required StackTrace stackTrace,
    String? message,
    DateTime? timeStamp,
  }) = _ReadException;

  /// error on writing local db
  const factory LocalDdException.writeException({
    required StackTrace stackTrace,
    String? message,
    DateTime? timeStamp,
  }) = _WriteException;

  const LocalDdException._();

  @override
  String get errorMsg => map(
        initException: (_) => ErrorStrings.dbInit,
        readException: (_) => ErrorStrings.dbReadWrite,
        writeException: (_) => ErrorStrings.dbReadWrite,
      );

  @override
  StackTrace? get errorStackTrace => stackTrace;
}
