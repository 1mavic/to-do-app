import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/const/app_strings.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/app_exception.dart';
part 'unexpected_exception.freezed.dart';

@freezed
class UnexpectedException with _$UnexpectedException implements AppException {
  const factory UnexpectedException({
    StackTrace? stackTrace,
    DateTime? timeStamp,
  }) = _UnexpectedException;

  const UnexpectedException._();

  @override
  String get errorMsg => ErrorStrings.unexpectedException;

  @override
  StackTrace? get errorStackTrace => stackTrace;
}
