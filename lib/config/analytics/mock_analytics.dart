import 'package:ya_todo_app/config/analytics/analytics_event.dart';
import 'package:ya_todo_app/config/analytics/app_analytics.dart';

class AppAnalyticsMock implements AppAnalytics {
  AppAnalyticsMock();

  @override
  Future<void> logTodoEvent(TodoEvent event, String? id) async {}

  @override
  Future<void> logNavigation(String screen, String method) async {}
}
