import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/features/todo_list/domain/providers/done_counter_provider.dart';
import 'package:ya_todo_app/features/todo_list/domain/providers/filter_provider.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/filter_button.dart';
import 'package:ya_todo_app/generated/l10n.dart';

class MainScreenAppbarWidget extends ConsumerWidget {
  const MainScreenAppbarWidget({
    Key? key,
    required this.expanded,
  }) : super(key: key);
  final bool expanded;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      centerTitle: false,
      elevation: 6,
      pinned: true,
      titleSpacing: 0,
      backgroundColor: Theme.of(context).extension<AppColors>()?.backPrimary,
      toolbarHeight: kToolBarHeight,
      collapsedHeight: kCollapsedHeight,
      expandedHeight: kExpandedHeight,
      title: AnimatedOpacity(
        opacity: expanded ? 1 : 0,
        duration: const Duration(milliseconds: 300),
        child: Padding(
          padding: const EdgeInsets.only(
            left: hPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).myTodos,
                style: AppTextStyle.title.copyWith(
                  color: Theme.of(context).extension<AppColors>()?.primary,
                ),
              ),
              FilterButton(
                filter: ref.watch(filterProvider),
                onPressed: () {
                  ref.read(filterProvider.notifier).change();
                },
              ),
            ],
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(left: 60, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).myTodos,
                    style: AppTextStyle.largeTitle.copyWith(
                      color: Theme.of(context).extension<AppColors>()?.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 400),
                    opacity: ref.watch(doneCounterProvider) > 0 ? 1 : 0,
                    child: Text(
                      S.of(context).done(
                            ref.watch(doneCounterProvider),
                          ),
                      style: AppTextStyle.body.copyWith(
                        color:
                            Theme.of(context).extension<AppColors>()?.tertiary,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              FilterButton(
                key: const ValueKey<String>('filter-buton'),
                filter: ref.watch(filterProvider),
                onPressed: () {
                  ref.read(filterProvider.notifier).change();
                },
              ),
            ],
          ),
        ),
      ),

      // bottom: ,
    );
  }
}
