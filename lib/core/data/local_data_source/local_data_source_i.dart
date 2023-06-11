import 'dart:async';

import 'package:ya_todo_app/core/domain/models/todo.dart';

/// iinterface for local data source
abstract interface class LocalDataSourceI {
  /// iinterface for local data source
  const LocalDataSourceI();

  /// initialize local data source
  Future<void> initialize();

  /// save data
  Future<void> saveData(List<Todo> data);

  /// get saved data
  List<Todo> getData();
}
