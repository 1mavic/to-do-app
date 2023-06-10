import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/features/crete_todo/ui/widgets/date_picker_widget.dart';
import 'package:ya_todo_app/features/crete_todo/ui/widgets/importance_widget.dart';
import 'package:ya_todo_app/features/crete_todo/ui/widgets/my_button_widget.dart';
import 'package:ya_todo_app/features/crete_todo/ui/widgets/my_divider.dart';
import 'package:ya_todo_app/features/crete_todo/ui/widgets/my_text_field_widget.dart';
import 'package:ya_todo_app/generated/l10n.dart';

/// screen for creating or viewing created To do item
class CreateTodoScreen extends StatelessWidget {
  /// screen for creating or viewing created To do item
  const CreateTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).extension<AppColors>()?.backPrimary,
      // appBar: AppBar(
      //
      // ),
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
              onPressed: () {},
              splashRadius: 0.1,
              color: Theme.of(context).extension<AppColors>()?.primary,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButtonWidget.blue(
                  onPressed: () {},
                  disabled: false,
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
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: hPadding,
                    ),
                    child: MyTextFieldWidget(),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: hPadding,
                    ),
                    child: ImportancePickerWidget(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: hPadding,
                    ),
                    child: MyDividerWidget(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: hPadding,
                    ),
                    child: DatePickerWidget(),
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
                      onPressed: () {},
                      disabled: false,
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
