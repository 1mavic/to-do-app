import 'package:dio/dio.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

/// interface for to-do list api calls
abstract class ListRepositoryI {
  /// stream with responces
  Stream<ListResponce> get responseStream;

  /// fetch list of all to-dos
  Future<void> getList();

  /// udate list of to-do
  Future<void> updateList({
    required List<Todo> todos,
    bool afterSync = false,
    CancelToken? cancelToken,
  });

  /// dispose repository
  void dispose();
}
