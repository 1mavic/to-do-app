import 'dart:convert';

import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/todo_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/features/crete_edit_todo/domain/repository/todo_repository.dart';

class RevisionRepository {
  const RevisionRepository(this._apiClient);

  final ApiClient _apiClient;

  Future<int?> getRevisionNumber() async {
    final res = await _apiClient.client.get<dynamic>(
      'list',
    );
    final response = ListResponce.fromJson(
      res.data as Map<String, dynamic>,
    );
    return response.revision;
  }
}
