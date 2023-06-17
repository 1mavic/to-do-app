import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/domain/serivces/app_loger.dart';

/// provider for apiclient
final apiClientProvider = Provider<ApiClient>(
  (ref) => ApiClient(
    const AppLogger(),
  ),
);
