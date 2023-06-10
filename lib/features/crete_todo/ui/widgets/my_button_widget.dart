import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/styles/text_button_style.dart';

/// custom textbutton implementation
class MyButtonWidget extends StatelessWidget {
  /// custom textbutton implementation
  const MyButtonWidget({
    required this.disabled,
    required this.onPressed,
    required this.text,
    required this.type,
    this.icon,
    super.key,
  });

  /// button with red style
  const MyButtonWidget.red({
    required this.text,
    required this.disabled,
    required this.onPressed,
    this.type = TextButtonType.red,
    super.key,
    this.icon,
  });

  /// button with blue style
  const MyButtonWidget.blue({
    required this.text,
    required this.disabled,
    required this.onPressed,
    this.type = TextButtonType.blue,
    this.icon,
    super.key,
  });

  /// text for button
  final String text;

  /// leading button icon. nullable
  final IconData? icon;

  /// is button disabled
  final bool disabled;

  /// on button pressed callback
  final VoidCallback onPressed;

  /// button type
  final TextButtonType type;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: disabled ? null : onPressed,
      style: type.style(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
            ),
            const SizedBox(
              width: 12,
            ),
          ],
          Text(
            text,
          )
        ],
      ),
    );
  }
}
