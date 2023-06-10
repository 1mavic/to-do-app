// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/generated/l10n.dart';

/// to do priority enum
enum Priority {
  no,
  low,
  hight;

  const Priority();

  /// get text string for priority
  String text(BuildContext context) => switch (this) {
        no => S.of(context).no,
        low => S.of(context).low,
        hight => S.of(context).hight,
      };

  /// get display text color for priority
  Color? textColor(BuildContext context) => switch (this) {
        no => Theme.of(context).extension<AppColors>()?.tertiary,
        low => Theme.of(context).extension<AppColors>()?.primary,
        hight => Theme.of(context).extension<AppColors>()?.red,
      };
}
