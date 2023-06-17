import 'dart:convert';

import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/todo_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/features/crete_edit_todo/domain/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepositoryI {
  const TodoRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<TodoResponce> getTodo(String id) async {
    final res = await _apiClient.client.get<dynamic>(
      'list/$id',
    );
    return TodoResponce.fromJson(
      res.data as Map<String, dynamic>,
    );
  }

  @override
  Future<TodoResponce> addTodo(Todo todo) async {
    final body = jsonEncode(TodoResponce(null, todo, null).toJson());
    final res = await _apiClient.client.post<dynamic>(
      'list',
      data: body,
    );
    return TodoResponce.fromJson(
      res.data as Map<String, dynamic>,
    );
  }

  @override
  Future<TodoResponce> editTodo(Todo todo) async {
    final body = jsonEncode(TodoResponce(null, todo, null).toJson());
    final res = await _apiClient.client.put<dynamic>(
      'list/${todo.id}',
      data: body,
    );
    return TodoResponce.fromJson(
      res.data as Map<String, dynamic>,
    );
  }

  @override
  Future<TodoResponce> deleteTodo(String id) async {
    final res = await _apiClient.client.delete<dynamic>(
      'list/$id',
    );
    return TodoResponce.fromJson(
      res.data as Map<String, dynamic>,
    );
  }
}
