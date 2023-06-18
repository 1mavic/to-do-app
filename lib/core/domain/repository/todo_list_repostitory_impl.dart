import 'dart:async';
import 'dart:convert';
import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/api_exception.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/revision_provider.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repository_i.dart';

// TODO(macegora): when change getted revision number from server

/// list to-do repository implementation
class ListRepositoryImpl implements ListRepositoryI {
  /// list to-do repository implementation
  ListRepositoryImpl(
    this._apiClient,
    this._dataRevision,
  ) {
    _controller = StreamController<ListResponce>();
  }
  final ApiClient _apiClient;
  final DataRevision _dataRevision;

  @override
  Stream<ListResponce> get responseStream => _controller.stream;

  late final StreamController<ListResponce> _controller;

  @override
  Future<void> getList() async {
    try {
      final result = await _apiClient.client.get<dynamic>(
        'list',
      );
      final data = ListResponce.fromJson(
        result.data as Map<String, dynamic>,
      );
      final rev = data.revision;
      if (rev != null) {
        _dataRevision.revision = rev;
      }
      _controller.add(data);
    } catch (e, stackTrace) {
      final exc = ApiException.byError(e, stackTrace);
      _controller.addError(exc);
    }
  }

  @override
  Future<void> updateList(List<Todo> todos) async {
    try {
      final body = jsonEncode(ListResponce(null, todos, null).toJson());
      final result = await _apiClient.client.patch<dynamic>(
        'list',
        data: body,
      );
      final data = ListResponce.fromJson(
        result.data as Map<String, dynamic>,
      );
      final rev = data.revision;
      if (rev != null) {
        _dataRevision.revision = rev;
      }
      _controller.add(data);
    } catch (e, stackTrace) {
      final exc = ApiException.byError(e, stackTrace);
      _controller.addError(exc);
    }
  }

  @override
  void dispose() {
    _controller.close();
  }
}
