import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/create_todo_screen.dart';
import 'package:ya_todo_app/features/todo_list/domain/providers/done_counter_provider.dart';
import 'package:ya_todo_app/features/todo_list/domain/providers/filter_provider.dart';
import 'package:ya_todo_app/features/todo_list/domain/providers/filtered_list_provider.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/card_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/filter_button.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/list_tile_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/new_button.dart';
import 'package:ya_todo_app/generated/l10n.dart';

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
    return Scaffold(
      backgroundColor: Theme.of(context).extension<AppColors>()?.backPrimary,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<dynamic>(
              builder: (context) => const CreateTodoScreen(),
            ),
          );
        },
        backgroundColor: Theme.of(context).extension<AppColors>()?.blue,
        child: const Icon(Icons.add),
      ),
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          SliverAppBar(
            centerTitle: false,
            elevation: 6,
            pinned: true,
            titleSpacing: 0,
            backgroundColor:
                Theme.of(context).extension<AppColors>()?.backPrimary,
            toolbarHeight: kToolBarHeight,
            collapsedHeight: kCollapsedHeight,
            expandedHeight: kExpandedHeight,
            title: AnimatedOpacity(
              opacity: _expanded ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: hPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Мои дела',
                      style: AppTextStyle.title.copyWith(
                        color:
                            Theme.of(context).extension<AppColors>()?.primary,
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
                            color: Theme.of(context)
                                .extension<AppColors>()
                                ?.primary,
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
                              color: Theme.of(context)
                                  .extension<AppColors>()
                                  ?.tertiary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
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

            // bottom: ,
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
          todo: list[index],
        );
      },
      itemCount: list.length + 1,
    );
  }
}
