import 'package:ya_todo_app/core/domain/models/responce_models/todo_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

abstract class TodoRepositoryI {
  Future<TodoResponce> getTodo(String id);
  Future<TodoResponce> addTodo(Todo todo);
  Future<TodoResponce> editTodo(Todo todo);
  Future<TodoResponce> deleteTodo(String id);
}
