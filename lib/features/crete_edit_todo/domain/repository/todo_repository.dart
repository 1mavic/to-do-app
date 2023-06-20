import 'package:ya_todo_app/core/domain/models/responce_models/todo_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

/// repository interface for single to-do operations
abstract class TodoRepositoryI {
  /// get to-do by id
  Future<TodoResponce> getTodo(String id);

  /// add new to-do
  Future<TodoResponce> addTodo(Todo todo);

  /// edit to-do
  Future<TodoResponce> editTodo(Todo todo);

  /// delete to-do by id
  Future<TodoResponce> deleteTodo(String id);
}
