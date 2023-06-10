import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/core/extensions/date_time_ext.dart';
import 'package:ya_todo_app/features/crete_todo/ui/widgets/my_switch_widget.dart';
import 'package:ya_todo_app/generated/l10n.dart';

/// widget with picked to do date
class DatePickerWidget extends StatefulWidget {
  /// widget with picked to do date
  /// if swithcer is off date is null
  /// by default date is today
  const DatePickerWidget({
    super.key,
  });

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  bool _value = false;
  DateTime _pickedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
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
              AnimatedCrossFade(
                duration: const Duration(milliseconds: 200),
                alignment: Alignment.bottomLeft,
                crossFadeState: !_value
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: const SizedBox(
                  width: 100,
                ),
                secondChild: Column(
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    GestureDetector(
                      onTap: () async {
                        final newDate = await showDatePicker(
                          context: context,
                          initialDate: _pickedDate,
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(
                            const Duration(days: 365),
                          ),
                          helpText: '',
                          cancelText: S.of(context).cancel,
                          confirmText: S.of(context).ready,
                          onDatePickerModeChange: (_) {},
                          builder: (context, child) => Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme:
                                  Theme.of(context).colorScheme.copyWith(
                                        primary: Theme.of(context)
                                            .extension<AppColors>()
                                            ?.blue,
                                        onPrimary: Theme.of(context)
                                            .extension<AppColors>()
                                            ?.primary,
                                        surface: Theme.of(context)
                                            .extension<AppColors>()
                                            ?.blue,
                                        onSurface: Theme.of(context)
                                            .extension<AppColors>()
                                            ?.primary, // body text color
                                      ),
                            ),
                            child: child!,
                          ),
                        );
                        if (newDate != null) {
                          setState(() {
                            _pickedDate = newDate;
                          });
                        }
                      },
                      child: Text(
                        _pickedDate.getFormattedTime(Intl.getCurrentLocale()),
                        style: AppTextStyle.sub.copyWith(
                          color: Theme.of(context).extension<AppColors>()?.blue,
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
      ),
    );
  }
}
