import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/core/domain/models/importance.dart';
import 'package:ya_todo_app/generated/l10n.dart';

/// widget for picking importance for to do
/// by default value is Importance.no
class ImportancePickerWidget extends StatefulWidget {
  /// widget for picking importance for to do. \n
  /// by default value is Importance.no
  const ImportancePickerWidget({
    super.key,
  });

  @override
  State<ImportancePickerWidget> createState() => _ImportancePickerWidgetState();
}

class _ImportancePickerWidgetState extends State<ImportancePickerWidget> {
  Importance _picked = Importance.no;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: hPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).importance,
            style: AppTextStyle.body.copyWith(
              color: Theme.of(context).extension<AppColors>()?.primary,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          PopupMenuButton<Importance>(
            initialValue: _picked,
            onSelected: (Importance item) {
              setState(() {
                _picked = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Importance>>[
              PopupMenuItem<Importance>(
                value: Importance.no,
                textStyle: Theme.of(context).popupMenuTheme.textStyle?.copyWith(
                      color: Theme.of(context).extension<AppColors>()?.primary,
                    ),
                child: Text(Importance.no.text(context)),
              ),
              PopupMenuItem<Importance>(
                value: Importance.low,
                textStyle: Theme.of(context).popupMenuTheme.textStyle?.copyWith(
                      color: Theme.of(context).extension<AppColors>()?.primary,
                    ),
                child: Text(Importance.low.text(context)),
              ),
              PopupMenuItem<Importance>(
                value: Importance.hight,
                textStyle: Theme.of(context).popupMenuTheme.textStyle?.copyWith(
                      color: Theme.of(context).extension<AppColors>()?.red,
                    ),
                child: Text(Importance.hight.text(context)),
              ),
            ],
            child: Text(
              _picked.text(context),
              style: AppTextStyle.sub.copyWith(
                color: _picked.textColor(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
