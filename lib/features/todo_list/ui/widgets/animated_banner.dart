import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/core/domain/providers/data_difference_provider.dart';
import 'package:ya_todo_app/core/domain/providers/todo_list_provider.dart';
import 'package:ya_todo_app/generated/l10n.dart';

class AnimatedBannerWidget extends ConsumerStatefulWidget {
  const AnimatedBannerWidget({super.key});

  @override
  ConsumerState<AnimatedBannerWidget> createState() =>
      _AnimatedBannerWidgetState();
}

class _AnimatedBannerWidgetState extends ConsumerState<AnimatedBannerWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _offset;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _offset = Tween<Offset>(
      begin: const Offset(0, -3),
      end: Offset.zero,
    ).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(dataDiffProvider, (previous, next) {
      if (previous == false && next == true) {
        _controller.forward();
      } else if (previous == true && next == false) {
        _controller.reverse();
      }
    });
    return AnimatedBuilder(
      animation: _offset,
      builder: (context, child) {
        return SlideTransition(
          position: _offset,
          child: child,
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).extension<AppColors>()?.backElevated,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                S.of(context).dataDiff,
                style: AppTextStyle.sub,
              ),
              Text(
                S.of(context).pickSource,
                style: AppTextStyle.sub,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: _BannerButtonWidget(
                        text: S.of(context).remote,
                        onTap: () => ref
                            .read(todoListProvider.notifier)
                            .priorityRemote(),
                      )),
                      VerticalDivider(
                        width: 10,
                        thickness: 2,
                        color: Theme.of(context)
                            .extension<AppColors>()
                            ?.supportSeparator,
                      ),
                      Expanded(
                        child: _BannerButtonWidget(
                          text: S.of(context).local,
                          onTap: () => ref
                              .read(todoListProvider.notifier)
                              .priorityLocal(),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BannerButtonWidget extends StatelessWidget {
  const _BannerButtonWidget({
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
