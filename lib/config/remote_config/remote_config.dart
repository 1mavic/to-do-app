import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/core/domain/models/hex_color.dart';
import 'package:ya_todo_app/core/domain/serivces/app_loger.dart';

class AppRemoteConfigClass {
  final AppLogger _logger;
  late final FirebaseRemoteConfig remoteConfig;
  late final StreamSubscription<RemoteConfigUpdate> _updateStream;
  late final StreamController<Color> _streamController;
  late Color priorityColor;
  AppRemoteConfigClass(this._logger);

  Future<void> initialize() async {
    try {
      remoteConfig = FirebaseRemoteConfig.instance;
      await remoteConfig.ensureInitialized();
      await remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: const Duration(seconds: 10),
        ),
      );

      await remoteConfig.setDefaults(const {
        configName: defPriorityColor,
      });
      await remoteConfig.fetchAndActivate();
      _streamController = StreamController<Color>();
      _streamController
          .add(HexColor(remoteConfig.getString('hight_priority_color')));
      _updateStream = remoteConfig.onConfigUpdated.listen((event) async {
        await remoteConfig.fetchAndActivate();
        _streamController
            .add(HexColor(remoteConfig.getString('hight_priority_color')));
      });
      priorityColor = HexColor(remoteConfig.getString('hight_priority_color'));
    } catch (e, stackTrace) {
      FirebaseCrashlytics.instance.recordError(e, stackTrace);
      _logger.logCustomData(
        'remote config init error.\n ${e.toString()}\n stackTrace: $stackTrace',
      );
    }
  }

  Stream<Color> get colorStream => _streamController.stream;

  dispose() {
    _updateStream.cancel();
    _streamController.close();
  }
}
