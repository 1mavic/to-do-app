import 'package:flutter/foundation.dart';
import 'package:ya_todo_app/core/domain/models/data_source_enum.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

class MergeLists {
  const MergeLists();

  Future<List<Todo>> call(
      List<Todo> local, List<Todo> api, DataSource target) async {
    return await compute(_mergeLists, (local: local, api: api, target: target));
  }

  static List<Todo> _mergeLists(
      ({List<Todo> local, List<Todo> api, DataSource target}) data) {
    final target = data.target;
    final local = data.local;
    final api = data.api;
    final mainList = switch (target) {
      DataSource.api => api,
      DataSource.local => local,
    };
    final secondList = switch (target) {
      DataSource.api => local,
      DataSource.local => api,
    };
    final mainIds = mainList.map((e) => e.id);
    final addToList =
        secondList.where((element) => !mainIds.contains(element.id));
    final resultList = [...mainList, ...addToList];
    resultList.sort((a, b) => (a.createdAt ?? 0).compareTo(b.createdAt ?? 0));
    return resultList;
  }
}
