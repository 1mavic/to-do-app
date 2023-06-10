import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_todo_app/core/domain/models/importance.dart';
part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required int id,
    @Default('') String text,
    @Default(Importance.no) importance,
    DateTime? deadline,
    @Default(false) done,
  }) = _Todo;

  const Todo._();

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}
