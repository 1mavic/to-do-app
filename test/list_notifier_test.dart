// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter_test/flutter_test.dart';
import 'package:ya_todo_app/config/analytics/mock_analytics.dart';
import 'package:ya_todo_app/core/data/local_data_source/mock_data_source.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/data_difference_provider.dart';
import 'package:ya_todo_app/core/domain/providers/todo_list_provider.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repository_mock.dart';
import 'package:ya_todo_app/core/domain/serivces/data_service_manager.dart';
import 'package:ya_todo_app/core/domain/use_cases/data_diff.dart';
import 'package:ya_todo_app/core/domain/use_cases/merge_lists.dart';
import 'package:ya_todo_app/core/widgets/overlay_service.dart';

void main() {
  group('DataDiff usecase tests', () {
    late TodoListNotifier listNotifier;
    late DataServiceManager manager;
    late List<Todo> list;
    late Todo newTodo;
    setUp(() {
      manager = DataServiceManager(
        const MockDataSource(),
        ListRepositoryMock(),
        OverlayService(),
        DataDiffNotifier(),
        const DataDiff(),
        const MergeLists(),
      );

      listNotifier = TodoListNotifier(manager, AppAnalyticsMock());

      list = <Todo>[
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

      newTodo = Todo(
        id: '3',
        text: 'test 3',
        updatedBy: 'user',
        done: false,
        changedAt: 11111,
        createdAt: 11116,
      );
    });
    test('intial state on creation', () async {
      expect(listNotifier.state, list);
    });

    test('state after adding', () async {
      listNotifier.add(newTodo);
      await Future.value();
      expect(listNotifier.state.length, 3);
      expect(listNotifier.state.last.text, 'test 3');
    });

    test('state after removing todo', () async {
      listNotifier.remove(list.first.id);
      await Future.value();
      expect(listNotifier.state.length, 1);
      expect(listNotifier.state.first.text, 'test 2');
    });

    test('state after toggle first todo', () async {
      listNotifier.toggle(list.first.id);
      await Future.value();
      expect(listNotifier.state.length, 2);
      expect(listNotifier.state.first.done, true);
    });

    test('state after toggle first todo', () async {
      listNotifier.edit(list.first.copyWith(text: 'newText'));
      await Future.value();
      expect(listNotifier.state.length, 2);
      expect(listNotifier.state.first.text, 'newText');
    });
  });
}
