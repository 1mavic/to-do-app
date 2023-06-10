import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/core/domain/models/status.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    required this.filter,
    required this.onPressed,
    super.key,
  });
  final Filter filter;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      splashRadius: 0.1,
      icon: filter == Filter.notDone
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: Theme.of(context).extension<AppColors>()?.blue,
    );
  }
}
