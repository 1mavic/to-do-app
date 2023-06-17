import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
part 'list_responce.freezed.dart';
part 'list_responce.g.dart';

@freezed
class ListResponce with _$ListResponce {
  @JsonSerializable(explicitToJson: true)
  const factory ListResponce(
    String? status,
    List<Todo> list,
    int? revision,
  ) = _ListResponce;

  const ListResponce._();

  factory ListResponce.fromJson(Map<String, Object?> json) => _$ListResponceFromJson(json);
}
