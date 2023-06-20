echo 'Starting apk release build'
fvm flutter clean
fvm flutter pub get
fvm flutter build apk --release -t lib/main_dev.dart --dart-define URL={url} --dart-define token={token}
echo 'apk release build done'