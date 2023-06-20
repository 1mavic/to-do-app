echo 'Starting apk release build'
fvm flutter clean
fvm flutter pub get
fvm flutter build apk --release --target lib/main_dev.dart --dart-define URL=https://beta.mrdekk.ru/todobackend/ --dart-define token=septifolious
echo 'apk release build done'