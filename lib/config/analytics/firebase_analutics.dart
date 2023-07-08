import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:ya_todo_app/config/analytics/analytics_event.dart';
import 'package:ya_todo_app/config/analytics/app_analytics.dart';

class AppAnalyticsImpl implements AppAnalytics {
  final FirebaseAnalytics _analytics;
  AppAnalyticsImpl() : _analytics = FirebaseAnalytics.instance;

  @override
  Future<void> logTodoEvent(TodoEvent event, String? id) async {
    await _analytics.logEvent(
      name: "todo_event",
      parameters: {
        "event_type": event.toString(),
        "item_id": id,
      },
    );
  }

  @override
  Future<void> logNavigation(String screen, String method) async {
    await _analytics.logEvent(
      name: "navigation_event",
      parameters: {
        "screen": screen,
        "method": method,
      },
    );
  }
}
