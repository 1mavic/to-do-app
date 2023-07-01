import 'dart:async';

import 'package:dio/src/cancel_token.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repository_i.dart';

class ListRepositoryMock implements ListRepositoryI {
  ListRepositoryMock() {
    _controller = StreamController<ListResponce>();
  }
  @override
  void dispose() {
    _controller.close();
  }

  late final StreamController<ListResponce> _controller;

  @override
  Future<void> getList() async {
    _controller.add(const ListResponce('ok', [], 0));
  }

  @override
  Stream<ListResponce> get responseStream => throw UnimplementedError();

  @override
  Future<void> updateList({
    required List<Todo> todos,
    bool afterSync = false,
    CancelToken? cancelToken,
  }) async {
    _controller.add(const ListResponce('ok', [], 0));
  }
}
