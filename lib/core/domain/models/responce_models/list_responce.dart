import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
part 'list_responce.freezed.dart';
part 'list_responce.g.dart';

/// model data for list to-do responce from api
@freezed
class ListResponce with _$ListResponce {
  /// model data for list to-do responce from api
  const factory ListResponce(
    String? status,
    List<Todo> list,
    int? revision,
  ) = _ListResponce;

  const ListResponce._();

  /// from json constructor
  factory ListResponce.fromJson(Map<String, Object?> json) =>
      _$ListResponceFromJson(json);
}
