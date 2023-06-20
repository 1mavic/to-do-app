// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/generated/l10n.dart';

part 'priority.g.dart';

/// to do priority enum
@HiveType(typeId: 2)
enum Priority {
  @HiveField(0)
  basic,
  @HiveField(1)
  low,
  @HiveField(2)
  important;

  /// get text string for priority
  String text(BuildContext context) => switch (this) {
        basic => S.of(context).no,
        low => S.of(context).low,
        important => S.of(context).hight,
      };

  /// get display text color for priority
  Color? textColor(BuildContext context) => switch (this) {
        basic => Theme.of(context).extension<AppColors>()?.tertiary,
        low => Theme.of(context).extension<AppColors>()?.primary,
        important => Theme.of(context).extension<AppColors>()?.red,
      };
}
