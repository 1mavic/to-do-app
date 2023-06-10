import 'package:flutter/material.dart';
import 'package:ya_todo_app/generated/l10n.dart';

enum Importance {
  no,
  low,
  hight;

  const Importance();
  String text(BuildContext context) => switch (this) {
        no => S.of(context).no,
        low => S.of(context).low,
        hight => S.of(context).hight,
      };
}
