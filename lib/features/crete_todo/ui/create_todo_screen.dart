import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/features/crete_todo/ui/widgets/importance_widget.dart';
import 'package:ya_todo_app/generated/l10n.dart';

import 'widgets/date_picker_widget.dart';

class CreateTodoScreen extends StatelessWidget {
  const CreateTodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).extension<AppColors>()?.backPrimary,
      // appBar: AppBar(
      //
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor:
                Theme.of(context).extension<AppColors>()?.backPrimary,
            automaticallyImplyLeading: false,
            titleSpacing: 8,
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {},
              splashRadius: 0.1,
              color: Theme.of(context).extension<AppColors>()?.primary,
            ),
            title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).save.toUpperCase(),
                  style: AppTextStyle.button.copyWith(
                    color: Theme.of(context).extension<AppColors>()?.blue,
                  ),
                ),
              ),
            ]),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 23),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: ImportancePickerWidget(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: DatePickerWidget(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
