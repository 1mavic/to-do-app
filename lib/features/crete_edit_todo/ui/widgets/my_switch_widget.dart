import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';

class MySwitchWidget extends StatelessWidget {
  const MySwitchWidget({
    required this.value,
    required this.onChanged,
    super.key,
  });
  final bool value;
  final void Function(bool) onChanged;
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      activeTrackColor:
          Theme.of(context).extension<AppColors>()?.blue?.withOpacity(0.3),
      inactiveTrackColor:
          Theme.of(context).extension<AppColors>()?.supportOverlay,
      inactiveThumbColor:
          Theme.of(context).extension<AppColors>()?.backElevated,
      activeColor: Theme.of(context).extension<AppColors>()?.blue,
      value: value,
      onChanged: onChanged,
    );
  }
}
