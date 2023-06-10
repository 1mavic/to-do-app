import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget>
    with TickerProviderStateMixin {
  bool val = false;
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
        begin: Offset.zero,
        end: Offset(0.5, 0),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: ColoredBox(color: Colors.red)),
        SlideTransition(
          position: moveAnimation,
          child: GestureDetector(
            onHorizontalDragUpdate: (details) {
              // log(details.localPosition.toString());
              log(details.delta.toString());
              // controller.value = details.localPosition.dx;
            },
            child: ColoredBox(
              color: Colors.white,
              child: ListTile(
                tileColor:
                    Theme.of(context).extension<AppColors>()?.backSecondary,
                style: ListTileStyle.drawer,
                contentPadding: const EdgeInsets.only(right: 16),
                titleAlignment: ListTileTitleAlignment.top,
                leading: Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return Theme.of(context).extension<AppColors>()!.green!;
                  }),
                  value: val,
                  onChanged: (value) {
                    setState(() {
                      val = value ?? false;
                    });
                  },
                ),
                trailing: Icon(
                  Icons.info_outline,
                  size: 20,
                  color: Theme.of(context).extension<AppColors>()?.tertiary,
                ),
                title: AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 300),
                  style: TextStyle(
                    decoration: val ? TextDecoration.lineThrough : null,
                  ),
                  child: Text(
                    widget.text,
                    style: AppTextStyle.body.copyWith(
                      color: Theme.of(context).extension<AppColors>()?.primary,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
    // return Dismissible(
    //   key: UniqueKey(),
    //   secondaryBackground: ColoredBox(
    //     color: Theme.of(context).extension<AppColors>()!.red!,
    //     child: Align(
    //       alignment: Alignment.centerRight,
    //       child: ValueListenableBuilder<double>(
    //           valueListenable: tr,
    //           builder: (context, value, child) {
    //             log(tr.toString());
    //             return Padding(
    //               padding: const EdgeInsets.symmetric(
    //                 horizontal: 24,
    //               ),
    //               child: Icon(
    //                 Icons.delete,
    //                 color: Theme.of(context).extension<AppColors>()?.white,
    //               ),
    //             );
    //           }),
    //     ),
    //   ),
    //   background: ColoredBox(
    //     color: Theme.of(context).extension<AppColors>()!.green!,
    //     child: Align(
    //       alignment: Alignment.centerLeft,
    //       child: Padding(
    //         padding: const EdgeInsets.symmetric(
    //           horizontal: 24,
    //         ),
    //         child: Icon(
    //           Icons.check,
    //           color: Theme.of(context).extension<AppColors>()?.white,
    //         ),
    //       ),
    //     ),
    //   ),
    //   onUpdate: (valD) {
    //     // log(val.progress.toString());
    //     tr.value = valD.progress + 10;
    //   },
    //   movementDuration: Duration(milliseconds: 600),
    //   confirmDismiss: (direction) async {
    //     if (direction == DismissDirection.startToEnd) {
    //       setState(() {
    //         val = true;
    //       });
    //       return false;
    //     } else {
    //       return true;
    //     }
    //   },
    //   onDismissed: (direction) {
    //     log('diss');
    //     if (direction == DismissDirection.startToEnd) {}
    //   },
    //   child: ColoredBox(
    //     color: Colors.white,
    //     child: ListTile(
    //       tileColor: Theme.of(context).extension<AppColors>()?.backSecondary,
    //       style: ListTileStyle.drawer,
    //       contentPadding: const EdgeInsets.only(right: 16),
    //       titleAlignment: ListTileTitleAlignment.top,
    //       leading: Checkbox(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(3),
    //         ),
    //         fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    //           return Theme.of(context).extension<AppColors>()!.green!;
    //         }),
    //         value: val,
    //         onChanged: (value) {
    //           setState(() {
    //             val = value ?? false;
    //           });
    //         },
    //       ),
    //       trailing: Icon(
    //         Icons.info_outline,
    //         size: 20,
    //         color: Theme.of(context).extension<AppColors>()?.tertiary,
    //       ),
    //       title: AnimatedDefaultTextStyle(
    //         duration: Duration(milliseconds: 600),
    //         style: TextStyle(
    //           decoration: val ? TextDecoration.lineThrough : null,
    //         ),
    //         child: Text(
    //           widget.text,
    //           style: AppTextStyle.body.copyWith(
    //             color: Theme.of(context).extension<AppColors>()?.primary,
    //           ),
    //           maxLines: 3,
    //           overflow: TextOverflow.ellipsis,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
