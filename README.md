# To-Do application

Flutter to-do application for yandex summer school of mobile development.

## Flutter version 3.10.5

## Getting Started

Project uses freezed and hive, to generate items use command: 
```
fvm flutter packages pub run build_runner build --delete-conflicting-outputs
```

## apk file
[download apk DEV](https://drive.google.com/file/d/1eTlMlO9vOxX2tRrhhNdLUKpOSm7qD5uz/view?usp=sharing)
[download apk PROD](https://drive.google.com/file/d/1H2sfQapNhtwLmV4z5miFprkEB6ufxpNj/view?usp=sharing)

## flavors

dev flavor
prod flavor

## run

fvm flutter run --target lib/main_dev.dart --flavor=dev --dart-define URL=$url --dart-define token=$token
fvm flutter run --target lib/main_prod.dart --flavor=prod --dart-define URL=$url --dart-define token=$token

## build release

sh build_apk_release.sh

## open create todo with deeplink
 
Android 
adb shell 'am start -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d "https://beta.mrdekk.ru/detail"' com.example.ya_todo_app

IOS
xcrun simctl openurl booted mrdekk://beta.mrdekk.ru/detail

## run integration test

fvm flutter test integration_tests/crud_todo_test.dart --flavor=dev --dart-define URL={$URL} --dart-define token={$token}


## Features:
* CRUD with TODO
* swipes for mark todo done or delete
* light and dark themes
* filter on list of todos. show all or only not completed
* todo local storage
* navigator 2.0
* api
* deeplink on create todo screen
* unit tests
* integration test on CRUD flow
* intl
* CI with GitHub actions (format, analyze, test, build)
* Firebase crashlytics
* Firebase analytics
* Firebase remoteconfig runtime update
* portrait and landscape orientation
* tablet support


### Libraries & Tools Used

* [dio](https://pub.dev/packages/dio) (network calls)
* [freezed](https://pub.dev/packages/freezed) (data classes)
* [hive_flutter](https://pub.dev/packages/hive_flutter) (local data provider)
* [hooks_riverpod](https://pub.dev/packages/hooks_riverpod) (State Management)


### Application screenshots
<img src="https://github.com/1mavic/to-do-app/blob/master/screen_shots/Simulator%20Screen%20Shot%20-%20Iphone%2011%20pro%20-%202023-07-02%20at%2005.03.29.png?raw=true"/>
<img src="https://github.com/1mavic/to-do-app/blob/master/screen_shots/Simulator%20Screen%20Shot%20-%20Iphone%2011%20pro%20-%202023-07-02%20at%2005.03.49.png?raw=true"/>
<img src="https://github.com/1mavic/to-do-app/blob/master/screen_shots/Simulator%20Screen%20Shot%20-%20Iphone%2011%20pro%20-%202023-07-02%20at%2005.05.05.png?raw=true"/>
<img src="https://github.com/1mavic/to-do-app/blob/master/screen_shots/Simulator%20Screen%20Shot%20-%20Iphone%2011%20pro%20-%202023-07-02%20at%2005.05.12.png?raw=true"/>
