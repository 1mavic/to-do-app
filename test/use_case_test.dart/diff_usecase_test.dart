import 'package:flutter_test/flutter_test.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/use_cases/data_diff.dart';

void main() {
  group('DataDiff usecase tests', () {
    setUp(() {});
    test('usecase return false when lists are contains same data', () async {
      final list1 = <Todo>[
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

      final list2 = <Todo>[
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
      const dataDiff = DataDiff();
      final result = await dataDiff(local: list1, api: list2);
      expect(result, false);
    });

    test('usecase return true when lists have differences', () async {
      final list1 = <Todo>[
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

      final list2 = <Todo>[
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
          createdAt: 11113,
        ),
      ];
      const dataDiff = DataDiff();
      final result = await dataDiff(local: list1, api: list2);
      expect(result, true);
    });
  });
}
