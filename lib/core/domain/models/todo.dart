// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ya_todo_app/core/domain/models/priority.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

/// to do data model
@freezed
class Todo extends HiveObject with _$Todo {
  /// to do data model
  @HiveType(typeId: 1)
  factory Todo({
    /// id property. if null to do is not saved
    @HiveField(0) int? id,
    @HiveField(1) @Default('') String text,
    @HiveField(2) @Default(Priority.no) Priority priority,
    @HiveField(3) DateTime? deadline,
    @HiveField(4) @Default(false) bool done,
  }) = _Todo;

  Todo._();

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}
