import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/const/app_strings.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/app_exception.dart';
part 'unexpected_exception.freezed.dart';
part 'unexpected_exception.g.dart';

@freezed
class UnexpectedException with _$UnexpectedException implements AppException {
  const factory UnexpectedException({
    String? stackTrace,
    DateTime? timeStamp,
  }) = _UnexpectedException;

  const UnexpectedException._();

  factory UnexpectedException.fromJson(Map<String, Object?> json) =>
      _$UnexpectedExceptionFromJson(json);

  @override
  String get errorMsg => ErrorStrings.unexpectedException;
}
