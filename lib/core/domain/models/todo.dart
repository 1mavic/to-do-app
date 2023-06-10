// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/core/domain/models/importance.dart';
import 'package:ya_todo_app/core/domain/models/status.dart';
part 'todo.freezed.dart';
part 'todo.g.dart';

/// to do data model
@freezed
class Todo with _$Todo {
  /// to do data model
  const factory Todo({
    /// id property. if null to do is not saved
    int? id,
    @Default('') String text,
    @Default(Priority.no) Priority priority,
    DateTime? deadline,
    @Default(false) bool done,
  }) = _Todo;

  const Todo._();

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}
