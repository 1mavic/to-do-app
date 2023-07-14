import 'package:flutter/material.dart';

/// class with methid to conver string with Hex to Color
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }

    try {
      return int.parse(
        hexColor,
        radix: 16,
      );
    } catch (e) {
      return 0;
    }
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
