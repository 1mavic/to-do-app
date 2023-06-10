import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/features/crete_edit_todo/domain/crud_todo_provider.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/date_picker_widget.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/importance_widget.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/my_button_widget.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/my_divider.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/my_text_field_widget.dart';
import 'package:ya_todo_app/core/domain/providers/todo_list_provider.dart';
import 'package:ya_todo_app/generated/l10n.dart';

final _formKey = GlobalKey<FormState>();

/// screen for creating or viewing created To do item
class CreateTodoScreen extends ConsumerWidget {
  /// screen for creating or viewing created To do item
  const CreateTodoScreen({
    this.id,
    super.key,
  });
  final int? id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoProvider(id));
    return Scaffold(
      backgroundColor: Theme.of(context).extension<AppColors>()?.backPrimary,
      body: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor:
                Theme.of(context).extension<AppColors>()?.backPrimary,
            automaticallyImplyLeading: false,
            titleSpacing: 8,
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
              splashRadius: 0.1,
              color: Theme.of(context).extension<AppColors>()?.primary,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButtonWidget.blueBig(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (id == null) {
                        ref.read(todoListProvider.notifier).add(todo);
                      } else {
                        ref.read(todoListProvider.notifier).edit(todo);
                      }
                      Navigator.of(context).pop();
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
                                    deadline: newDate,
                                  ),
                            );
                      },
                      pickedDate: todo.deadline,
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
                      onPressed: () async {
                        final currentId = id;
                        if (currentId == null) return;

                        final res = await showDialog<bool>(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(
                                  S.of(context).confirm,
                                  style: AppTextStyle.title,
                                ),
                                actions: [
                                  MyButtonWidget.blue(
                                    text: S.of(context).cancel,
                                    onPressed: () {
                                      Navigator.of(context).pop(false);
                                    },
                                  ),
                                  MyButtonWidget.red(
                                    text: S.of(context).remove,
                                    onPressed: () {
                                      Navigator.of(context).pop(true);
                                    },
                                  ),
                                ],
                              ),
                            ) ??
                            false;

                        if (res == true && context.mounted) {
                          ref.read(todoListProvider.notifier).remove(currentId);
                          Navigator.of(context).pop();
                        }
                      },
                      disabled: id == null,
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
