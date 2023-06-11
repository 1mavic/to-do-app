import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/data/local_data_source/hive_data_source.dart';
import 'package:ya_todo_app/core/data/local_data_source/local_data_source_i.dart';

/// local data source provider
final localDbProvider = Provider<LocalDataSourceI>((ref) => HiveDataSource());
