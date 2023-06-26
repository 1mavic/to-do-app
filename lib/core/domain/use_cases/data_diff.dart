import 'package:flutter/foundation.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

/// usee case for check difference between local storage data and api data
class DataDiff {
  const DataDiff();

  Future<bool> call(
      {required List<Todo> local, required List<Todo> api}) async {
    return await compute(_getDiff, (local, api));
  }

  static bool _getDiff((List<Todo>, List<Todo>) pair) {
    final (local, api) = pair;
    if (local.length != api.length) return true;
    for (var localTodo in local) {
      final index = api.indexWhere((element) => element.id == localTodo.id);
      if (index == -1) return true;
      if (api[index] != localTodo) return true;
    }
    for (var apiTodo in api) {
      final index = local.indexWhere((element) => element.id == apiTodo.id);
      if (index == -1) return true;
      if (local[index] != apiTodo) return true;
    }
    return false;
  }
}
