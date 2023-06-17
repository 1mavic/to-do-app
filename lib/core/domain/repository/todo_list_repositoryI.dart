import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

abstract class ListRepositoryI {
  Future<ListResponce> getList();
  Future<ListResponce> updateList(List<Todo> todos);
}
