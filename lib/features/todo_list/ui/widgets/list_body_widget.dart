import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/features/todo_list/domain/providers/filtered_list_provider.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/animated_banner.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/appbar_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/card_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/list_tile_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/new_button.dart';

class TodoListBodyWidget extends StatelessWidget {
  const TodoListBodyWidget({
    required this.controller,
    required this.expanded,
    super.key,
  });
  final ScrollController controller;
  final bool expanded;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          key: const ValueKey<String>('main-scroll'),
          controller: controller,
          slivers: [
            MainScreenAppbarWidget(
              expanded: expanded,
            ),
            const SliverPadding(
              padding: EdgeInsets.only(top: 10),
              sliver: SliverToBoxAdapter(
                child: CardWidget(
                  child: _ListWidget(),
                ),
              ),
            ),
          ],
        ),
        const Positioned(
          top: 40,
          left: 10,
          right: 10,
          child: AnimatedBannerWidget(),
        ),
      ],
    );
  }
}

class _ListWidget extends ConsumerWidget {
  const _ListWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(filteredListProvider);
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        if (index == list.length) {
          return const NewButtonWidget();
        }
        return ListTileWidget(
          key: const ValueKey<String>('list-tile'),
          todo: list[index],
        );
      },
      itemCount: list.length + 1,
    );
  }
}
