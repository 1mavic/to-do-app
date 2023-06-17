import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/domain/serivces/app_loger.dart';

final loggerProvider = Provider<AppLogger>((ref) => const AppLogger());
