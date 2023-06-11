import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/widgets/my_button_widget.dart';
import 'package:ya_todo_app/generated/l10n.dart';

/// alert dialog with remove confirmation
class RemoveAlertDialogWidget extends StatelessWidget {
  /// alert dialog with remove confirmation
  const RemoveAlertDialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
    );
  }
}
