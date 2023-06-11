import 'package:hive_flutter/hive_flutter.dart';
import 'package:ya_todo_app/core/data/local_data_source/local_data_source_i.dart';
import 'package:ya_todo_app/core/data/models/todo_data_model.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/local_db_exception.dart';
import 'package:ya_todo_app/core/domain/models/priority.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

/// local data source implementation with hive
class HiveDataSource implements LocalDataSourceI {
  /// local data source implementation with hive
  HiveDataSource();
  late Box<TodoDataModel> _box;
  final _localKey = 'localData';
  @override
  Future<void> initialize() async {
    try {
      await Hive.initFlutter();
      Hive
        ..registerAdapter(TodoAdapter())
        ..registerAdapter(PriorityAdapter())
        ..registerAdapter(TodoDataModelAdapter());
      _box = await Hive.openBox<TodoDataModel>(_localKey);
    } catch (e, stackTrace) {
      throw LocalDdException.initException(
        message: 'unknown hive init error',
        stackTrace: stackTrace.toString(),
        timeStamp: DateTime.now(),
      );
    }
  }

  @override
  Future<void> saveData(List<Todo> data) async {
    try {
      final dataToSave = TodoDataModel(data);
      await _box.put(_localKey, dataToSave);
    } catch (e, stackTrace) {
      throw LocalDdException.writeException(
        message: e.toString(),
        stackTrace: stackTrace.toString(),
        timeStamp: DateTime.now(),
      );
    }
  }

  @override
  List<Todo> getData() {
    try {
      final data = _box.get(_localKey);
      final list = data?.todos ?? [];
      return list;
    } catch (e, stackTrace) {
      throw LocalDdException.readException(
        message: e.toString(),
        stackTrace: stackTrace.toString(),
        timeStamp: DateTime.now(),
      );
    }
  }
}
