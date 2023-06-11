import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/core/domain/models/status.dart';

/// widget with filter button
class FilterButton extends StatelessWidget {
  /// widget with filter button
  const FilterButton({
    required this.filter,
    required this.onPressed,
    super.key,
  });

  /// current filter value
  final Filter filter;

  /// callback on filter change
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
