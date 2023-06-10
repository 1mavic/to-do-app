import 'package:intl/intl.dart';

/// Extension on DateTime
extension DateFormating on DateTime {
  /// format date in to dd MMMM yyyy  string
  String getFormattedTime(String locale) {
    return DateFormat('dd MMMM yyyy', locale).format(this);
  }
}
