import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/app_icons.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/core/domain/models/priority.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/providers/config_provider.dart';
import 'package:ya_todo_app/core/domain/providers/todo_list_provider.dart';
import 'package:ya_todo_app/core/extensions/date_time_ext.dart';
import 'package:ya_todo_app/core/widgets/dialogs/remove_alert_dialog_widget.dart';
import 'package:ya_todo_app/navigation/navigator_inherit.dart';

/// list tile widget with to do
class ListTileWidget extends ConsumerStatefulWidget {
  /// list tile widget with to do
  const ListTileWidget({
    required this.todo,
    super.key,
  });

  /// to do to display in list tile
  final Todo todo;
  @override
  ConsumerState<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends ConsumerState<ListTileWidget> {
  DismissDirection direction = DismissDirection.none;

  @override
  Widget build(BuildContext context) {
    final hightColor = ref.watch(configColorProvider);
    return Dismissible(
      background: widget.todo.done
          ? ColoredBox(
              color: Theme.of(context).extension<AppColors>()!.green!,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Icon(
                    Icons.undo,
                    color: Theme.of(context).extension<AppColors>()?.white,
                  ),
                ),
              ),
            )
          : ColoredBox(
              color: Theme.of(context).extension<AppColors>()!.green!,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Icon(
                    Icons.check,
                    color: Theme.of(context).extension<AppColors>()?.white,
                  ),
                ),
              ),
            ),
      secondaryBackground: ColoredBox(
        color: Theme.of(context).extension<AppColors>()!.red!,
        child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Icon(
              Icons.delete,
              color: Theme.of(context).extension<AppColors>()?.white,
            ),
          ),
        ),
      ),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          ref.read(todoListProvider.notifier).toggle(widget.todo.id);
        } else if (direction == DismissDirection.endToStart) {
          ref.read(todoListProvider.notifier).remove(widget.todo.id);
        }
      },
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.startToEnd) {
          ref.read(todoListProvider.notifier).toggle(widget.todo.id);
          return false;
        } else if (direction == DismissDirection.endToStart) {
          final res = await showDialog<bool>(
                context: context,
                builder: (context) => const RemoveAlertDialogWidget(),
              ) ??
              false;

          if (res == true) {
            ref.read(todoListProvider.notifier).remove(widget.todo.id);
            return true;
          }

          return false;
        }
        return false;
      },
      key: ValueKey<String?>(widget.todo.id),
      child: ColoredBox(
        color: Theme.of(context).extension<AppColors>()!.backSecondary!,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: hPadding,
            vertical: 12,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox.square(
                dimension: 24,
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors.green,
                  ),
                  child: Checkbox(
                    key: const ValueKey<String>('check-box'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    activeColor: Colors.amber,
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return widget.todo.priority == Priority.important
                          ? Theme.of(context).extension<AppColors>()!.red!
                          : Theme.of(context).extension<AppColors>()!.green!;
                    }),
                    value: widget.todo.done,
                    onChanged: (_) {
                      ref
                          .read(todoListProvider.notifier)
                          .toggle(widget.todo.id);
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              switch (widget.todo.priority) {
                Priority.basic => const SizedBox.shrink(),
                Priority.low => SvgPicture.asset(
                    AppIcons.lowPriority,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).extension<AppColors>()!.gray!,
                      BlendMode.srcIn,
                    ),
                  ),
                Priority.important => SvgPicture.asset(
                    AppIcons.highPriority,
                    colorFilter: ColorFilter.mode(
                      hightColor.map(
                        data: (color) => color.value,
                        error: (_) =>
                            Theme.of(context).extension<AppColors>()!.red!,
                        loading: (_) =>
                            Theme.of(context).extension<AppColors>()!.red!,
                      ),
                      BlendMode.srcIn,
                    ),
                  ),
              },
              switch (widget.todo.priority) {
                Priority.basic => const SizedBox.shrink(),
                _ => const SizedBox(width: 3),
              },
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () =>
                      AppNavigator.of(context)?.openTaskScreen(widget.todo.id),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.todo.text,
                        style: AppTextStyle.body.copyWith(
                          decoration: widget.todo.done
                              ? TextDecoration.lineThrough
                              : null,
                          color:
                              Theme.of(context).extension<AppColors>()?.primary,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (widget.todo.deadline != null) ...[
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          DateTime.fromMillisecondsSinceEpoch(
                            widget.todo.deadline ?? 0,
                          ).getShortFormat(Intl.getCurrentLocale()),
                          style: AppTextStyle.subHead.copyWith(
                            color: Theme.of(context)
                                .extension<AppColors>()
                                ?.tertiary,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () =>
                    AppNavigator.of(context)?.openTaskScreen(widget.todo.id),
                child: SizedBox.square(
                  dimension: 24,
                  child: Icon(
                    Icons.info_outline,
                    size: 20,
                    color: Theme.of(context).extension<AppColors>()?.tertiary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
