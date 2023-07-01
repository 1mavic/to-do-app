import 'dart:async';

import 'package:dio/dio.dart';
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
    _controller.add(ListResponce(
        'ok',
        [
          Todo(
            id: '3',
            text: 'test 3',
            updatedBy: 'user',
            done: false,
            changedAt: 11111,
            createdAt: 11116,
          ),
        ],
        0));
  }

  @override
  Stream<ListResponce> get responseStream => _controller.stream;

  @override
  Future<void> updateList({
    required List<Todo> todos,
    bool afterSync = false,
    CancelToken? cancelToken,
  }) async {
    _controller.add(
      ListResponce(
        'ok',
        [
          Todo(
            id: '3',
            text: 'test 3',
            updatedBy: 'user',
            done: false,
            changedAt: 11111,
            createdAt: 11111,
          ),
        ],
        0,
      ),
    );
  }
}
