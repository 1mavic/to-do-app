import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

/// interface for to-do list api calls
abstract class ListRepositoryI {
  /// fetch list of all to-dos
  Future<ListResponce> getList();

  /// udate list of to-do
  Future<ListResponce> updateList(List<Todo> todos);
}
