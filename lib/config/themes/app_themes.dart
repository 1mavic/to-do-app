import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';

abstract class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    extensions: <ThemeExtension<AppColors>>[
      const AppColors(
        supportSeparator: Color(0x33000000),
        supportOverlay: Color(0x0F000000),
        primary: Color(0x000000),
        secondary: Color(0x99000000),
        tertiary: Color(0x4D000000),
        disable: Color(0x26000000),
        red: Color(0xFF3B30),
        green: Color(0x34C759),
        blue: Color(0x007AFF),
        gray: Color(0x8E8E93),
        grayLight: Color(0xD1D1D6),
        white: Color(0xFFFFFF),
        backPrimary: Color(0xF7F6F2),
        backSecondary: Color(0xFFFFFF),
        backElevated: Color(0xFFFFFF),
      ),
    ],
  );

  static final darkTheme = ThemeData.dark().copyWith(
    extensions: <ThemeExtension<AppColors>>[
      const AppColors(
        supportSeparator: Color(0x33FFFFFF),
        supportOverlay: Color(0x52000000),
        primary: Color(0xFFFFFF),
        secondary: Color(0x99FFFFFF),
        tertiary: Color(0x66FFFFFF),
        disable: Color(0x26FFFFFF),
        red: Color(0xFF453A),
        green: Color(0x32D74B),
        blue: Color(0x0A84FF),
        gray: Color(0x8E8E93),
        grayLight: Color(0x48484A),
        white: Color(0xFFFFFF),
        backPrimary: Color(0x161618),
        backSecondary: Color(0x252528),
        backElevated: Color(0x3C3C3F),
      ),
    ],
  );
}
