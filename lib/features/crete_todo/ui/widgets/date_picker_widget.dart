import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/core/extensions/date_time_ext.dart';
import 'package:ya_todo_app/features/crete_todo/ui/widgets/my_switch_widget.dart';
import 'package:ya_todo_app/generated/l10n.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({Key? key}) : super(key: key);

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).doToDate,
              style: AppTextStyle.body.copyWith(
                color: Theme.of(context).extension<AppColors>()?.primary,
              ),
            ),
            if (_value) ...[
              const SizedBox(
                height: 4,
              ),
              Text(
                DateTime.now().getFormattedTime(),
                style: AppTextStyle.sub.copyWith(
                  color: Theme.of(context).extension<AppColors>()?.blue,
                ),
              )
            ],
          ],
        ),
        MySwitchWidget(
          value: _value,
          onChanged: (bool value) {
            setState(() {
              _value = value;
            });
          },
        )
      ],
    );
  }
}
