import 'dart:async';
import 'dart:convert';
import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/api_exception.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/revision_provider.dart';
import 'package:ya_todo_app/core/domain/providers/sync_provider.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repository_i.dart';

/// list to-do repository implementation
class ListRepositoryImpl implements ListRepositoryI {
  /// list to-do repository implementation
  ListRepositoryImpl(
    this._apiClient,
    this._dataRevision,
    this._syncNotifier,
  ) {
    _controller = StreamController<ListResponce>();
  }
  final ApiClient _apiClient;
  final DataRevision _dataRevision;
  final SyncNotifier _syncNotifier;

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
      _syncNotifier.done();
    } catch (e, stackTrace) {
      final exc = ApiException.byError(e, stackTrace);
      _controller.addError(exc);
      _syncNotifier.done();
    }
  }

  @override
  Future<void> updateList({
    required List<Todo> todos,
    bool afterSync = false,
  }) async {
    try {
      _syncNotifier.inProcess();
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
      if (!afterSync) {
        _controller.add(data);
      }
      _syncNotifier.done();
    } catch (e, stackTrace) {
      final exc = ApiException.byError(e, stackTrace);
      _controller.addError(exc);
      _syncNotifier.done();
    }
  }

  @override
  void dispose() {
    _controller.close();
  }
}
