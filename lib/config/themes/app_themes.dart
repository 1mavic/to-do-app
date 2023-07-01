import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';

/// application theme data
abstract class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    popupMenuTheme: const PopupMenuThemeData(
      textStyle: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
    ),
    extensions: <ThemeExtension<AppColors>>[
      const AppColors(
        supportSeparator: Color(0x33000000),
        supportOverlay: Color(0x0F000000),
        primary: Color(0xFF000000),
        secondary: Color(0x99000000),
        tertiary: Color(0x4D000000),
        disable: Color(0x26000000),
        red: Color(0xFFFF3B30),
        green: Color(0xFF34C759),
        blue: Color(0xFF007AFF),
        gray: Color(0xFF8E8E93),
        grayLight: Color(0xFFD1D1D6),
        white: Color(0xFFFFFFFF),
        backPrimary: Color(0xFFF7F6F2),
        backSecondary: Color(0xFFFFFFFF),
        backElevated: Color(0xFFFFFFFF),
      ),
    ],
  );

  static final darkTheme = ThemeData.dark().copyWith(
    popupMenuTheme: const PopupMenuThemeData(
      textStyle: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
    ),
    extensions: <ThemeExtension<AppColors>>[
      const AppColors(
        supportSeparator: Color(0x33FFFFFF),
        supportOverlay: Color(0x52000000),
        primary: Color(0xFFFFFFFF),
        secondary: Color(0x99FFFFFF),
        tertiary: Color(0x66FFFFFF),
        disable: Color(0x26FFFFFF),
        red: Color(0xFFFF453A),
        green: Color(0xFF32D74B),
        blue: Color(0xFF0A84FF),
        gray: Color(0xFF8E8E93),
        grayLight: Color(0xFF48484A),
        white: Color(0xFFFFFFFF),
        backPrimary: Color(0xFF161618),
        backSecondary: Color(0xFF252528),
        backElevated: Color(0xFF3C3C3F),
      ),
    ],
  );
}
