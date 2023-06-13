// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/generated/l10n.dart';
import 'package:ya_todo_app/navigation/navigation.dart';

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
        onTap: () {
          context.navigateTo(RouteConfig.detail(null));
        },
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
