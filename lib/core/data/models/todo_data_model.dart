import 'package:hive_flutter/hive_flutter.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

part 'todo_data_model.g.dart';

/// data model for saving to do list in local storage
@HiveType(typeId: 3)
class TodoDataModel {
  /// data model for saving to do list in local storage
  const TodoDataModel(this.todos);
  @HiveField(0)

  ///  list of to dos
  final List<Todo> todos;
}
