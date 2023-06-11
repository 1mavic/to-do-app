import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/core/domain/models/priority.dart';
import 'package:ya_todo_app/generated/l10n.dart';

/// widget for picking importance for to do
/// by default value is Importance.no
class PriorityPickerWidget extends ConsumerWidget {
  /// widget for picking importance for to do. \n
  /// by default value is Importance.no
  const PriorityPickerWidget({
    required this.priority,
    required this.onChange,
    super.key,
  });
  final Priority priority;
  final void Function(Priority) onChange;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: hPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).importance,
            style: AppTextStyle.body.copyWith(
              color: Theme.of(context).extension<AppColors>()?.primary,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          PopupMenuButton<Priority>(
            initialValue: priority,
            onSelected: onChange,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Priority>>[
              PopupMenuItem<Priority>(
                value: Priority.no,
                textStyle: Theme.of(context).popupMenuTheme.textStyle?.copyWith(
                      color: Theme.of(context).extension<AppColors>()?.primary,
                    ),
                child: Text(Priority.no.text(context)),
              ),
              PopupMenuItem<Priority>(
                value: Priority.low,
                textStyle: Theme.of(context).popupMenuTheme.textStyle?.copyWith(
                      color: Theme.of(context).extension<AppColors>()?.primary,
                    ),
                child: Text(Priority.low.text(context)),
              ),
              PopupMenuItem<Priority>(
                value: Priority.hight,
                textStyle: Theme.of(context).popupMenuTheme.textStyle?.copyWith(
                      color: Theme.of(context).extension<AppColors>()?.red,
                    ),
                child: Text(Priority.hight.text(context)),
              ),
            ],
            child: Text(
              priority.text(context),
              style: AppTextStyle.sub.copyWith(
                color: priority.textColor(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
