import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
part 'todo_responce.freezed.dart';
part 'todo_responce.g.dart';

@freezed
class TodoResponce with _$TodoResponce {
  @JsonSerializable(explicitToJson: true)
  const factory TodoResponce(
    String? status,
    @JsonKey(name: 'element') Todo todo,
    int? revision,
  ) = _ListResponce;

  const TodoResponce._();

  factory TodoResponce.fromJson(Map<String, Object?> json) => _$TodoResponceFromJson(json);
}
