import 'dart:convert';
import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repositoryI.dart';

class ListRepositoryImpl implements ListRepositoryI {
  const ListRepositoryImpl(this._apiClient);
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
    _apiClient.client.options.headers.addAll({
      'X-Last-Known-Revision': 8,
    });
    final res = await _apiClient.client.patch<dynamic>(
      'list',
      data: body,
    );
    return ListResponce.fromJson(
      res.data as Map<String, dynamic>,
    );
  }
}
