// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';

class MyDividerWidget extends StatelessWidget {
  const MyDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      thickness: 0.5,
      color: Theme.of(context).extension<AppColors>()?.supportSeparator,
    );
  }
}
