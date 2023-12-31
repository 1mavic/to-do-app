/// exception abstract class for application exc
abstract class AppException implements Exception {
  /// get error message for user
  String get errorMsg;

  /// get error message for user
  StackTrace? get errorStackTrace;
}
