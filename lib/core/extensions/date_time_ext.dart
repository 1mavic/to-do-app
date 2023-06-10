import 'package:intl/intl.dart';

/// Extension on String.
extension DateFormat on DateTime {
  /// Make first letter capital
  String? getFormattedTime() {
    try {
      return DateFormat('yyyy').format(this);
    } catch (e) {
      return null;
    }
  }
}
