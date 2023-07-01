# To-Do application

Flutter to-do application for yandex summer school of mobile development.

## Flutter version 3.10.0

## Getting Started

Project uses freezed and hive, to generate items use command: 
```
fvm flutter packages pub run build_runner build --delete-conflicting-outputs
```

## apk file
[download apk](https://drive.google.com/file/d/1P8nb5sfJNYCmDtBUXU7WeV_m3gAiZnYq/view?usp=sharing)

## run

fvm flutter run --target lib/main_dev.dart --dart-define URL=$url --dart-define token=$token

## build release

sh build_apk_release.sh

## open create todo with deeplink
 
Android 
adb shell 'am start -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d "https://beta.mrdekk.ru/detail"' com.example.ya_todo_app

IOS
xcrun simctl openurl booted mrdekk://beta.mrdekk.ru/detail

## run integration test

flutter test integration_tests/crud_todo_test.dart --dart-define URL={$URL} --dart-define token={$token}


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

### Libraries & Tools Used

* [dio](https://pub.dev/packages/dio) (network calls)
* [freezed](https://pub.dev/packages/freezed) (data classes)
* [hive_flutter](https://pub.dev/packages/hive_flutter) (local data provider)
* [hooks_riverpod](https://pub.dev/packages/hooks_riverpod) (State Management)


### Application screenshots
<img src="https://github.com/1mavic/to-do-app/blob/master/screen_shots/Simulator%20Screen%20Shot%20-%20Iphone%2011%20pro%20-%202023-07-02%20at%2005.03.29.png?raw=true"/>
<img src="https://drive.google.com/file/d/1F-bXR4x-O8O6b2Ax9GNFffmKIuyzfZDM/view?usp=sharing"/>
<img src="https://drive.google.com/file/d/1HLxN3znr5IGGNxfD1znI570CZsbWiCZH/view?usp=sharing"/>
<img src="https://drive.google.com/file/d/1zj8iyDDRMnM-_vhSmHeqvOZPbOpzCV4X/view?usp=sharing"/>
