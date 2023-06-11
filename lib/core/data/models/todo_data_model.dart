import 'package:hive_flutter/hive_flutter.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

part 'todo_data_model.g.dart';

@HiveType(typeId: 3)
class TodoDataModel {
  const TodoDataModel(this.todos);
  @HiveField(0)
  final List<Todo> todos;
}
