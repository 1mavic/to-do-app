// ignore_for_file: public_member_api_docs, invalid_annotation_target

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
    @HiveField(0)
        String? id,
    @HiveField(1)
    @Default('')
        String text,
    @HiveField(2)
    @JsonKey(name: 'importance')
    @Default(Priority.basic)
        Priority priority,
    @HiveField(3)
        int? deadline,
    @HiveField(4)
    @Default(false)
        bool done,
    @JsonKey(name: 'created_at')
    @HiveField(5)
        int? createdAt,
    @JsonKey(name: 'changed_at')
    @HiveField(6)
        int? changedAt,
    @JsonKey(name: 'last_updated_by')
    @HiveField(7)
    @Default('local_user')
        String updatedBy,
  }) = _Todo;

  Todo._();

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}
