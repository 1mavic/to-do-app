import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/core/domain/providers/todo_list_provider.dart';
import 'package:ya_todo_app/core/widgets/dialogs/remove_alert_dialog_widget.dart';
import 'package:ya_todo_app/features/crete_edit_todo/domain/providers/crud_todo_provider.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/date_picker_widget.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/importance_widget.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/my_button_widget.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/my_divider.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/my_text_field_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/todo_list_screen.dart';
import 'package:ya_todo_app/generated/l10n.dart';
import 'package:ya_todo_app/navigation/navigator_inherit.dart';

final _formKey = GlobalKey<FormState>();

/// screen for creating or viewing created To do item
class CreateTodoScreen extends ConsumerWidget {
  /// screen for creating or viewing created To do item
  const CreateTodoScreen({
    this.id,
    this.fullScreen = true,
    super.key,
  });

  /// to do id to display. If null, creating new to do
  final String? id;

  final bool fullScreen;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoProvider(id));
    return Scaffold(
      backgroundColor: Theme.of(context).extension<AppColors>()?.backPrimary,
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor:
                Theme.of(context).extension<AppColors>()?.backPrimary,
            automaticallyImplyLeading: false,
            titleSpacing: 8,
            leading: fullScreen
                ? IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => AppNavigator.of(context)?.goBack(),
                    splashRadius: 0.1,
                    color: Theme.of(context).extension<AppColors>()?.primary,
                  )
                : null,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButtonWidget.blueBig(
                  key: const ValueKey<String>('save-button'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if ((id ?? '').isEmpty) {
                        ref.read(todoListProvider.notifier).add(todo);
                      } else {
                        ref.read(todoListProvider.notifier).edit(todo);
                      }
                      if (fullScreen) {
                        AppNavigator.of(context)?.goBack();
                      }
                    }
                  },
                  disabled: todo.text.isEmpty,
                  text: S.of(context).save.toUpperCase(),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 23),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: hPadding,
                    ),
                    child: Form(
                      key: _formKey,
                      child: MyTextFieldWidget(
                        // key: const ValueKey<String>('text-field'),
                        key: ValueKey<String?>(todo.id),
                        initialText: todo.text,
                        onChanged: (val) =>
                            ref.read(todoProvider(id).notifier).edit(
                                  ref.read(todoProvider(id)).copyWith(
                                        text: val,
                                      ),
                                ),
                        validator: (value) {
                          if ((value ?? '').trim().isEmpty) {
                            return S.of(context).emptyFieldError;
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: hPadding,
                    ),
                    child: PriorityPickerWidget(
                      onChange: (priority) {
                        ref.read(todoProvider(id).notifier).edit(
                              ref.read(todoProvider(id)).copyWith(
                                    priority: priority,
                                  ),
                            );
                      },
                      priority: todo.priority,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: hPadding,
                    ),
                    child: MyDividerWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: hPadding,
                    ),
                    child: DatePickerWidget(
                      onDatePick: (newDate) {
                        ref.read(todoProvider(id).notifier).edit(
                              ref.read(todoProvider(id)).copyWith(
                                    deadline: newDate?.millisecondsSinceEpoch,
                                  ),
                            );
                      },
                      pickedDate: todo.deadline != null
                          ? DateTime.fromMillisecondsSinceEpoch(
                              todo.deadline ?? 0,
                            )
                          : null,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const MyDividerWidget(),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: MyButtonWidget.red(
                      key: const ValueKey<String>('delete-button'),
                      onPressed: () async {
                        final currentId = todo.id;
                        final res = await showDialog<bool>(
                              context: context,
                              builder: (context) =>
                                  const RemoveAlertDialogWidget(),
                            ) ??
                            false;

                        if (res == true && context.mounted) {
                          ref.read(todoListProvider.notifier).remove(currentId);
                          if (fullScreen) {
                            await AppNavigator.of(context)?.goBack();
                          } else {
                            context
                                .findAncestorStateOfType<TodoListWidgetState>()
                                ?.openTodo(null);
                          }
                        }
                      },
                      disabled: (todo.id ?? '').isEmpty,
                      text: S.of(context).delete,
                      icon: Icons.delete,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
