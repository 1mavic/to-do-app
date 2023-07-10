import 'package:ya_todo_app/config/analytics/app_analytics.dart';
import 'package:ya_todo_app/config/analytics/firebase_analutics.dart';
import 'package:ya_todo_app/core/domain/serivces/app_loger.dart';
import 'package:ya_todo_app/core/domain/use_cases/data_diff.dart';
import 'package:ya_todo_app/core/domain/use_cases/merge_lists.dart';
import 'package:ya_todo_app/navigation/navigator_manager.dart';
import 'package:ya_todo_app/navigation/navigator_namager_impl.dart';

import '../../navigation/router/navigation.dart';

/// di container for application dependencies
final diContainer = _DiContainer();

class _DiContainer {
  final AppLogger _logger = const AppLogger();
  final DataDiff _diffUseCase = const DataDiff();
  final MergeLists _mergeUseCase = const MergeLists();
  final AppAnalyticsImpl _appAnalytics = AppAnalyticsImpl();
  NavigatorManagerImpl? _navigationManager;

  /// get instance of application logger service
  AppLogger get appLogger => _logger;
  DataDiff get diffUseCase => _diffUseCase;
  MergeLists get mergeUseCase => _mergeUseCase;
  AppAnalytics get appAnalitics => _appAnalytics;
  NavigatorManager get navigationManager =>
      _navigationManager ??= NavigatorManagerImpl(
        AppRouterDelegate(_logger, _appAnalytics),
        AppRouteInformationParser(),
      );
}
