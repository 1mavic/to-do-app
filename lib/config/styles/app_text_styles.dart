import 'dart:ui';

abstract class AppTextStyle {
  static final largeTitle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 32,
    height: 37.5 / 32,
    fontWeight: FontWeight.w500,
  );

  static final title = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20,
    height: 32 / 20,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w500,
  );

  static final button = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    height: 24 / 14,
    letterSpacing: 0.16,
    fontWeight: FontWeight.w500,
  );

  static final body = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    height: 20 / 16,
    fontWeight: FontWeight.w400,
  );

  static final subhead = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
  );
}
