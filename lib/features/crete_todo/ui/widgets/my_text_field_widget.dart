// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/generated/l10n.dart';

class MyTextFieldWidget extends StatelessWidget {
  const MyTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).extension<AppColors>()?.backSecondary,
        borderRadius: BorderRadius.circular(
          8,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(
              0.12,
            ),
            offset: const Offset(0, 2),
            blurRadius: 2,
          ),
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(
              0.06,
            ),
            blurRadius: 2,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          hPadding,
        ),
        child: TextFormField(
          keyboardType: TextInputType.multiline,
          textCapitalization: TextCapitalization.sentences,
          minLines: 3,
          maxLines: 50,
          style: AppTextStyle.inputLabel.copyWith(
            color: Theme.of(context).extension<AppColors>()?.primary,
          ),
          cursorColor: Theme.of(context).extension<AppColors>()?.primary,
          decoration: InputDecoration(
            hintText: S.of(context).doSmth,
            hintStyle: AppTextStyle.inputLabel.copyWith(
              color: Theme.of(context).extension<AppColors>()?.tertiary,
            ),
            contentPadding: EdgeInsets.zero,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
