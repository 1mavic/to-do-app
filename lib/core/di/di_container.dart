import 'package:ya_todo_app/config/analytics/app_analytics.dart';
import 'package:ya_todo_app/config/analytics/firebase_analutics.dart';
import 'package:ya_todo_app/core/domain/serivces/app_loger.dart';
import 'package:ya_todo_app/core/domain/use_cases/data_diff.dart';
import 'package:ya_todo_app/core/domain/use_cases/merge_lists.dart';

/// di container for application dependencies
final diContainer = _DiContainer();

class _DiContainer {
  final AppLogger _logger = const AppLogger();
  final DataDiff _diffUseCase = const DataDiff();
  final MergeLists _mergeUseCase = const MergeLists();
  final AppAnalyticsImpl _appAnalytics = AppAnalyticsImpl();

  /// get instance of application logger service
  AppLogger get appLogger => _logger;
  DataDiff get diffUseCase => _diffUseCase;
  MergeLists get mergeUseCase => _mergeUseCase;
  AppAnalytics get appAnalitics => _appAnalytics;
}
