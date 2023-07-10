import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/features/todo_list/ui/todo_list_screen.dart';
import 'package:ya_todo_app/generated/l10n.dart';

class NewButtonWidget extends StatefulWidget {
  const NewButtonWidget({
    super.key,
  });

  @override
  State<NewButtonWidget> createState() => _NewButtonWidgetState();
}

class _NewButtonWidgetState extends State<NewButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: hPadding,
      ),
      child: GestureDetector(
        onTap: () => context
            .findAncestorStateOfType<TodoListWidgetState>()
            ?.openTodo(null),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 36,
              ),
              Expanded(
                child: Text(
                  S.of(context).newItem,
                  style: AppTextStyle.body.copyWith(
                    color: Theme.of(context).extension<AppColors>()?.tertiary,
                  ),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
