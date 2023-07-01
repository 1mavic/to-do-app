import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/filter_button.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/list_tile_widget.dart';
import 'package:ya_todo_app/generated/l10n.dart';
import 'package:ya_todo_app/main_dev.dart' as app;
import 'package:ya_todo_app/features/crete_edit_todo/ui/create_todo_screen.dart';

//--dart-define URL=https://beta.mrdekk.ru/todobackend/ --dart-define token=septifolious

void main() {
  // ignore: unused_local_variable
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('CRUD todo app test', () {
    const todoText = 'test todo text';
    const todoText2 = 'another text';
    setUp(() {});

    tearDown(() {});

    testWidgets('crud todo ', (tester) async {
      // start app
      app.main();

      await tester.pumpAndSettle(
        const Duration(seconds: 2),
      );

      expect(find.byIcon(Icons.add), findsOneWidget);

      await tester.tap(find.byIcon(Icons.add));

      await tester.pumpAndSettle();

      expect(find.byType(CreateTodoScreen), findsOneWidget);

      final textField = find.byKey(const ValueKey<String>('text-field'));

      await tester.tap(textField);
      await tester.enterText(textField, todoText);

      final saveButton = find.byKey(const ValueKey<String>('save-button'));
      await tester.tap(saveButton);

      await tester.pumpAndSettle();

      final todo = find.text(todoText);
      expect(todo, findsOneWidget);

      // await tester.pumpAndSettle(
      //   const Duration(seconds: 10),
      // );

      // final lastCheck = find.byKey(const ValueKey<String>('check-box')).last;
      // await tester.tap(lastCheck);

      // await tester.pumpAndSettle();

      // expect(todo, findsNothing);

      // final filterButton = find.byIcon(Icons.add);
      // await tester.tap(filterButton);

      // await tester.pumpAndSettle();

      // expect(find.byIcon(Icons.visibility_off), findsOneWidget);

      // expect(todo, findsOneWidget);

      // await tester.tap(find.byIcon(Icons.info_outline).last);

      // await tester.pumpAndSettle();

      // expect(find.byType(CreateTodoScreen), findsOneWidget);

      // await tester.tap(textField);
      // await tester.enterText(textField, todoText2);

      // await tester.tap(saveButton);

      // await tester.pumpAndSettle(
      //   const Duration(seconds: 2),
      // );

      // final todo2 = find.text(todoText2);
      // expect(todo2, findsOneWidget);

      // await tester.tap(find.byIcon(Icons.info_outline).last);

      // await tester.pumpAndSettle();

      // expect(find.byType(CreateTodoScreen), findsOneWidget);

      // await tester.tap(find.byKey(const ValueKey<String>('delete-button')));

      // await tester.pumpAndSettle();

      // await tester.tap(find.byKey(const ValueKey<String>('remove-confirm')));

      // await tester.pumpAndSettle(
      //   const Duration(seconds: 2),
      // );

      // expect(todo2, findsNothing);
    });
  });
}
