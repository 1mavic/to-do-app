import 'package:ya_todo_app/core/data/local_data_source/local_data_source_i.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';

class MockDataSource implements LocalDataSourceI {
  const MockDataSource();
  @override
  List<Todo> getData() {
    return <Todo>[
      Todo(
        id: '1',
        text: 'test 1',
        updatedBy: 'user',
        done: false,
        changedAt: 11111,
        createdAt: 11111,
      ),
      Todo(
        id: '2',
        text: 'test 2',
        updatedBy: 'user',
        done: false,
        changedAt: 11112,
        createdAt: 11112,
      )
    ];
  }

  @override
  Future<void> initialize() async {}

  @override
  Future<void> saveData(List<Todo> data) async {}
}
