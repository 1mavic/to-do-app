import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:ya_todo_app/core/domain/serivces/app_loger.dart';

class AppRemoteConfigClass {
  final AppLogger _logger;
  late final FirebaseRemoteConfig remoteConfig;
  AppRemoteConfigClass(this._logger);

  Future<void> initialize() async {
    try {
      remoteConfig = FirebaseRemoteConfig.instance;
      await remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: const Duration(seconds: 10),
        ),
      );

      await remoteConfig.setDefaults(const {
        "hight_priority_color": 'FF3B30',
      });
    } catch (e, stackTrace) {
      _logger.logCustomData(
        'remote config init error.\n ${e.toString()}\n stackTrace: $stackTrace',
      );
    }
  }

  Future<void> activate() async {
    try {
      await remoteConfig.fetchAndActivate();
    } catch (e, stackTrace) {
      _logger.logCustomData(
        'remote config activate error.\n ${e.toString()}\n stackTrace: $stackTrace',
      );
    }
  }

  Stream<RemoteConfigUpdate> get configStream => remoteConfig.onConfigUpdated;
}
