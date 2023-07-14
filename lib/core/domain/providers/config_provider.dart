import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/remote_config/remote_config.dart';
import 'package:ya_todo_app/core/di/di_container.dart';

final configProvider =
    Provider<AppRemoteConfigClass>((ref) => AppRemoteConfigClass(
          diContainer.appLogger,
        ));

final configColorProvider = StreamProvider<Color>((ref) {
  return ref.watch(configProvider).colorStream;
});
