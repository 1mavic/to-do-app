import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

/// class for loggin app events and error
class AppLogger extends ProviderObserver {
  /// class for loggin app events and error
  const AppLogger();
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('''
provider updated
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    log('''
provider did faile
{
  "provider": "${provider.name ?? provider.runtimeType}",
  stackTrace: $stackTrace,
}''');
  }

  /// log custom data in console
  void logCustomDate(Object obj) {
    log('''
    new log:
    $obj,
''');
  }
}
