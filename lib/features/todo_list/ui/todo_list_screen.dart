import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/card_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/list_tile_widget.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/new_button.dart';
import 'package:ya_todo_app/generated/l10n.dart';

/// widget with all to do list
class TodoListWidget extends StatefulWidget {
  /// widget with all to do list
  const TodoListWidget({
    super.key,
  });

  @override
  State<TodoListWidget> createState() => _TodoListWidgetState();
}

class _TodoListWidgetState extends State<TodoListWidget> {
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
    const list = <String>[
      // ignore: lines_longer_than_80_chars
      'asd as a sdfsdf asdfasd  asd asd  asd ads a asldf lkasjdlf jasd jflk ajlksdj. flajsdl falsj d fjasld jflkajsdlfj asd sd sld jfasjd ',
      'asd asd asd asd',
      'fsadf asdf',
      // ignore: lines_longer_than_80_chars
      'asd as a sdfsdf asdfasd  asd asd  asd ads a asldf lkasjdlf jasd jflk ajlksdj flajsdl falsj d fjasld jflkajsdlfj asd sd sld jfasjd ',
      'asd asd asd asd',
      'fsadf asdf',
      // ignore: lines_longer_than_80_chars
      'asd as a sdfsdf asdfasd  asd asd  asd ads a asldf lkasjdlf jasd jflk ajlksdj flajsdl falsj d fjasld jflkajsdlfj asd sd sld jfasjd ',
      'asd asd asd asd',
      'fsadf asdf',
      // ignore: lines_longer_than_80_chars
      'asd as a sdfsdf asdfasd  asd asd  asd ads a asldf lkasjdlf jasd jflk ajlksdj flajsdl falsj d fjasld jflkajsdlfj asd sd sld jfasjd ',
      'asd asd asd asd',
      'fsadf asdf',
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).extension<AppColors>()?.backPrimary,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
                    IconButton(
                      onPressed: () {
                        log('tap');
                      },
                      splashRadius: 0.1,
                      icon: const Icon(Icons.remove_red_eye),
                      color: Theme.of(context).extension<AppColors>()?.blue,
                    )
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
                        Text(
                          S.of(context).done(5),
                          style: AppTextStyle.body.copyWith(
                            color: Theme.of(context)
                                .extension<AppColors>()
                                ?.tertiary,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        log('tap');
                      },
                      splashRadius: 0.1,
                      icon: const Icon(Icons.remove_red_eye),
                      color: Theme.of(context).extension<AppColors>()?.blue,
                    )
                  ],
                ),
              ),
            ),

            // bottom: ,
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 10),
            sliver: SliverToBoxAdapter(
              child: CardWidget(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    if (index == list.length) {
                      return const NewButtonWidget();
                    }
                    return ListTileWidget(
                      text: list[index],
                    );
                  },
                  itemCount: list.length + 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
