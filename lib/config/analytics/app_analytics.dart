import 'package:ya_todo_app/config/analytics/analytics_event.dart';

abstract interface class AppAnalytics {
  const AppAnalytics();

  Future<void> logTodoEvent(TodoEvent event, String? id);
  Future<void> logNavigation(String screen, String method);
}
