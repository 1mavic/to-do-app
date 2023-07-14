echo 'Starting apk release build'
fvm flutter clean
fvm flutter pub get
fvm flutter build apk --release --flavor=dev -t lib/main_dev.dart --dart-define URL={{URL}} --dart-define token={{TOKEN}}
echo 'apk release build done'