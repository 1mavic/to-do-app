import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/generated/l10n.dart';

/// lable widget with sync data information
class SyncWidget extends StatelessWidget {
  /// lable widget with sync data information
  const SyncWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: ColoredBox(
        color:
            Theme.of(context).extension<AppColors>()?.disable ?? Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            S.of(context).syncData,
            style: AppTextStyle.subHead,
          ),
        ),
      ),
    );
  }
}
