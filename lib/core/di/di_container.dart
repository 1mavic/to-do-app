import 'package:ya_todo_app/core/domain/serivces/app_loger.dart';

/// di container for application dependencies
final diContainer = _DiContainer();

class _DiContainer {
  final AppLogger _logger = const AppLogger();

  /// get instance of application logger service
  AppLogger get appLogger => _logger;
}
