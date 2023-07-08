import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/remote_config/remote_config.dart';
import 'package:ya_todo_app/core/di/di_container.dart';
import 'package:ya_todo_app/core/domain/models/hex_color.dart';

final configProvider =
    Provider<AppRemoteConfigClass>((ref) => AppRemoteConfigClass(
          diContainer.appLogger,
        ));

final configColorProvider = StreamProvider<Color>((ref) async* {
  final conf = ref.watch(configProvider);
  await conf.initialize();

  await for (final value in conf.configStream) {
    final newKeys = value.updatedKeys;
    if (newKeys.contains('hight_priority_color')) {
      final result = conf.remoteConfig.getString('hight_priority_color');
      yield HexColor(result);
    }
  }
});
