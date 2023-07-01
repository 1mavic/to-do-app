import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/core/domain/providers/overlay_service_provider.dart';
import 'package:ya_todo_app/core/domain/providers/sync_provider.dart';
import 'package:ya_todo_app/features/todo_list/domain/providers/filtered_list_provider.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/animated_banner.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/appbar_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/card_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/list_tile_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/new_button.dart';
import 'package:ya_todo_app/generated/l10n.dart';
import 'package:ya_todo_app/navigation/navigation.dart';

/// key for main to-do list screen widget
final mainScreenKey = GlobalKey();

/// widget with all to do list
class TodoListWidget extends ConsumerStatefulWidget {
  /// widget with all to do list
  const TodoListWidget({
    super.key,
  });

  @override
  ConsumerState<TodoListWidget> createState() => _TodoListWidgetState();
}

class _TodoListWidgetState extends ConsumerState<TodoListWidget> {
  late ScrollController _controller;
  bool _expanded = false;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController()
      ..addListener(() {
        setState(() {
          _expanded = _controller.hasClients &&
              _controller.offset > kExpandedHeight - kToolBarHeight - 10;
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(syncProvider, (previous, next) {
      if (previous?.syncInProcess == false && next.syncInProcess == true) {
        ref.read(overlayProvider).showTextModal(S.of(context).syncData);
      } else if ((previous?.syncInProcess ?? false) == true &&
          next.syncInProcess == false) {
        ref.read(overlayProvider).removeOverlay();
      }
    });
    return Scaffold(
      key: mainScreenKey,
      backgroundColor: Theme.of(context).extension<AppColors>()?.backPrimary,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.navigateTo(RouteConfig.detail(null));
        },
        backgroundColor: Theme.of(context).extension<AppColors>()?.blue,
        child: const Icon(Icons.add),
      ),
      body: Stack(
        children: [
          CustomScrollView(
            key: const ValueKey<String>('main-scroll'),
            controller: _controller,
            slivers: [
              MainScreenAppbarWidget(
                expanded: _expanded,
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
      ),
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
