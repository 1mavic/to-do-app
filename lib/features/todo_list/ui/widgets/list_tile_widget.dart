import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/app_icons.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/core/domain/models/importance.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/extensions/date_time_ext.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/create_todo_screen.dart';
import 'package:ya_todo_app/core/domain/providers/todo_list_provider.dart';

class ListTileWidget extends ConsumerStatefulWidget {
  const ListTileWidget({
    required this.todo,
    super.key,
  });
  final Todo todo;
  @override
  ConsumerState<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends ConsumerState<ListTileWidget>
    with TickerProviderStateMixin {
  double thresh = 0;
  late Animation<Offset> moveAnimation;
  late final AnimationController controller;
  DismissDirection direction = DismissDirection.none;
  final ValueNotifier<double> tr = ValueNotifier<double>(0);

  @override
  void initState() {
    controller = AnimationController(vsync: this);
    moveAnimation = controller.drive(
      Tween<Offset>(
        begin: Offset(0, 0),
        end: const Offset(0.5, 0),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      key: ValueKey<int?>(widget.todo.id),
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  activeColor: Colors.amber,
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return widget.todo.priority == Priority.hight
                        ? Theme.of(context).extension<AppColors>()!.red!
                        : Theme.of(context).extension<AppColors>()!.green!;
                  }),
                  value: widget.todo.done,
                  onChanged: (_) {
                    ref.read(todoListProvider.notifier).toggle(widget.todo.id);
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            switch (widget.todo.priority) {
              Priority.no => const SizedBox.shrink(),
              Priority.low => SvgPicture.asset(
                  AppIcons.lowPriority,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).extension<AppColors>()!.gray!,
                    BlendMode.srcIn,
                  ),
                ),
              Priority.hight => SvgPicture.asset(
                  AppIcons.highPriority,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).extension<AppColors>()!.red!,
                    BlendMode.srcIn,
                  ),
                ),
            },
            switch (widget.todo.priority) {
              Priority.no => const SizedBox.shrink(),
              _ => const SizedBox(width: 3),
            },
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.todo.text,
                    style: AppTextStyle.body.copyWith(
                      decoration:
                          widget.todo.done ? TextDecoration.lineThrough : null,
                      color: Theme.of(context).extension<AppColors>()?.primary,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (widget.todo.deadline != null) ...[
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      // S.of(context).date,
                      widget.todo.deadline
                          .getShortFormat(Intl.getCurrentLocale()),
                      style: AppTextStyle.subHead.copyWith(
                        color:
                            Theme.of(context).extension<AppColors>()?.tertiary,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<dynamic>(
                    builder: (context) => CreateTodoScreen(
                      id: widget.todo.id,
                    ),
                  ),
                );
              },
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
    );
  }
}
