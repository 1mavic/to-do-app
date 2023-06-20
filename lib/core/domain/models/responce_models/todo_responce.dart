// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
part 'todo_responce.freezed.dart';
part 'todo_responce.g.dart';

/// model data for single to-do responce from api
@freezed
class TodoResponce with _$TodoResponce {
  /// model data for single to-do responce from api
  const factory TodoResponce(
    String? status,
    @JsonKey(name: 'element') Todo todo,
    int? revision,
  ) = _ListResponce;

  const TodoResponce._();

  /// from json consructor
  factory TodoResponce.fromJson(Map<String, Object?> json) =>
      _$TodoResponceFromJson(json);
}
