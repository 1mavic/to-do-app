import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    this.supportSeparator,
    this.supportOverlay,
    this.primary,
    this.secondary,
    this.tertiary,
    this.disable,
    this.red,
    this.green,
    this.blue,
    this.gray,
    this.grayLight,
    this.white,
    this.backPrimary,
    this.backSecondary,
    this.backElevated,
  });

  final Color? supportSeparator;
  final Color? supportOverlay;
  final Color? primary;
  final Color? secondary;
  final Color? tertiary;
  final Color? disable;
  final Color? red;
  final Color? green;
  final Color? blue;
  final Color? gray;
  final Color? grayLight;
  final Color? white;
  final Color? backPrimary;
  final Color? backSecondary;
  final Color? backElevated;

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      supportSeparator: Color.lerp(supportSeparator, other.supportSeparator, t),
      supportOverlay: Color.lerp(supportOverlay, other.supportOverlay, t),
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      tertiary: Color.lerp(tertiary, other.tertiary, t),
      disable: Color.lerp(disable, other.disable, t),
      red: Color.lerp(red, other.red, t),
      green: Color.lerp(green, other.green, t),
      blue: Color.lerp(blue, other.blue, t),
      gray: Color.lerp(gray, other.gray, t),
      grayLight: Color.lerp(grayLight, other.grayLight, t),
      white: Color.lerp(white, other.white, t),
      backPrimary: Color.lerp(backPrimary, other.backPrimary, t),
      backSecondary: Color.lerp(backSecondary, other.backSecondary, t),
      backElevated: Color.lerp(backElevated, other.backElevated, t),
    );
  }

  @override
  AppColors copyWith({
    Color? supportSeparator,
    Color? supportOverlay,
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? disable,
    Color? red,
    Color? green,
    Color? blue,
    Color? gray,
    Color? grayLight,
    Color? white,
    Color? backPrimary,
    Color? backSecondary,
    Color? backElevated,
  }) {
    return AppColors(
      supportSeparator: supportSeparator ?? this.supportSeparator,
      supportOverlay: supportOverlay ?? this.supportOverlay,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      disable: disable ?? this.disable,
      red: red ?? this.red,
      green: green ?? this.green,
      blue: blue ?? this.blue,
      gray: gray ?? this.gray,
      grayLight: grayLight ?? this.grayLight,
      white: white ?? this.white,
      backPrimary: backPrimary ?? this.backPrimary,
      backSecondary: backSecondary ?? this.backSecondary,
      backElevated: backElevated ?? this.backElevated,
    );
  }
}
