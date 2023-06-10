// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/styles/app_text_styles.dart';

/// TextButtons style types
enum TextButtonType {
  blueBig,
  blue,
  red;

  const TextButtonType();

  /// get buttonstyle for button
  ButtonStyle style(BuildContext context) => switch (this) {
        blueBig => _TextButtonStyle.blueBigButton(context),
        blue => _TextButtonStyle.blueButton(context),
        red => _TextButtonStyle.redButton(context),
      };
}

abstract class _TextButtonStyle {
  static ButtonStyle redButton(BuildContext context) {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Theme.of(context).extension<AppColors>()!.disable!;
          }
          return Theme.of(context).extension<AppColors>()!.red!;
        },
      ),
      iconColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Theme.of(context).extension<AppColors>()!.disable!;
          }
          return Theme.of(context).extension<AppColors>()!.red!;
        },
      ),
      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppTextStyle.body;
          }

          return AppTextStyle.body;
        },
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return Theme.of(context).extension<AppColors>()!.red!.withOpacity(
                0.2,
              );
        },
      ),
    );
  }

  static ButtonStyle blueButton(BuildContext context) {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Theme.of(context).extension<AppColors>()!.disable!;
          }
          return Theme.of(context).extension<AppColors>()!.blue!;
        },
      ),
      iconColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Theme.of(context).extension<AppColors>()!.disable!;
          }
          return Theme.of(context).extension<AppColors>()!.blue!;
        },
      ),
      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppTextStyle.body;
          }

          return AppTextStyle.body;
        },
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return Theme.of(context).extension<AppColors>()!.blue!.withOpacity(
                0.2,
              );
        },
      ),
    );
  }

  static ButtonStyle blueBigButton(BuildContext context) {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Theme.of(context).extension<AppColors>()!.disable!;
          }
          return Theme.of(context).extension<AppColors>()!.blue!;
        },
      ),
      iconColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Theme.of(context).extension<AppColors>()!.disable!;
          }
          return Theme.of(context).extension<AppColors>()!.blue!;
        },
      ),
      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (Set<MaterialState> states) {
          return AppTextStyle.button;
        },
      ),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return Theme.of(context).extension<AppColors>()!.blue!.withOpacity(
                0.2,
              );
        },
      ),
    );
  }
}
