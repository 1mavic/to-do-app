import 'package:flutter_test/flutter_test.dart';
import 'package:ya_todo_app/core/domain/models/data_source_enum.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/use_cases/data_diff.dart';
import 'package:ya_todo_app/core/domain/use_cases/merge_lists.dart';

void main() {
  group('MergeLists usecase tests', () {
    late List<Todo> local;
    late List<Todo> api;
    setUp(() {
      local = <Todo>[
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

      api = <Todo>[
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
          text: 'test 34',
          updatedBy: 'user',
          done: true,
          changedAt: 11112,
          createdAt: 11112,
        )
      ];
    });
    test('MergeLists return valid list on local list target', () async {
      const mergeLists = MergeLists();
      final result = await mergeLists(local, api, DataSource.local);
      expect(result, local);
    });

    test('MergeLists return valid list on api list target', () async {
      const mergeLists = MergeLists();
      final result = await mergeLists(local, api, DataSource.api);
      expect(result, api);
    });

    test('MergeLists valid merge of lists', () async {
      const mergeLists = MergeLists();
      final result = await mergeLists(local, api, DataSource.api);
      expect(result, api);
    });
  });
}
