import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/generated/l10n.dart';

class NewButtonWidget extends StatefulWidget {
  NewButtonWidget({Key? key}) : super(key: key);

  @override
  State<NewButtonWidget> createState() => _NewButtonWidgetState();
}

class _NewButtonWidgetState extends State<NewButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 15,
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
    );
  }
}
