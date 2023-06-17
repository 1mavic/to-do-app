import 'dart:convert';
import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repository_i.dart';

/// list to-do repository implementation
class ListRepositoryImpl implements ListRepositoryI {
  /// list to-do repository implementation
  const ListRepositoryImpl(
    this._apiClient,
  );
  final ApiClient _apiClient;
  @override
  Future<ListResponce> getList() async {
    final res = await _apiClient.client.get<dynamic>(
      'list',
    );
    return ListResponce.fromJson(
      res.data as Map<String, dynamic>,
    );
  }

  @override
  Future<ListResponce> updateList(List<Todo> todos) async {
    final body = jsonEncode(ListResponce(null, todos, null).toJson());
    final res = await _apiClient.client.patch<dynamic>(
      'list',
      data: body,
    );
    return ListResponce.fromJson(
      res.data as Map<String, dynamic>,
    );
  }
}