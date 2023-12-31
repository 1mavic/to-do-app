// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Мои дела`
  String get myTodos {
    return Intl.message(
      'Мои дела',
      name: 'myTodos',
      desc: '',
      args: [],
    );
  }

  /// `Выполнено — {count}`
  String done(Object count) {
    return Intl.message(
      'Выполнено — $count',
      name: 'done',
      desc: '',
      args: [count],
    );
  }

  /// `Новое`
  String get newItem {
    return Intl.message(
      'Новое',
      name: 'newItem',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Важность`
  String get importance {
    return Intl.message(
      'Важность',
      name: 'importance',
      desc: '',
      args: [],
    );
  }

  /// `Нет`
  String get no {
    return Intl.message(
      'Нет',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Низкий`
  String get low {
    return Intl.message(
      'Низкий',
      name: 'low',
      desc: '',
      args: [],
    );
  }

  /// `!! Высокий`
  String get hight {
    return Intl.message(
      '!! Высокий',
      name: 'hight',
      desc: '',
      args: [],
    );
  }

  /// `Сделать до`
  String get doToDate {
    return Intl.message(
      'Сделать до',
      name: 'doToDate',
      desc: '',
      args: [],
    );
  }

  /// `ОТМЕНА`
  String get cancel {
    return Intl.message(
      'ОТМЕНА',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `ГОТОВО`
  String get ready {
    return Intl.message(
      'ГОТОВО',
      name: 'ready',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get delete {
    return Intl.message(
      'Удалить',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Что надо сделать…`
  String get doSmth {
    return Intl.message(
      'Что надо сделать…',
      name: 'doSmth',
      desc: '',
      args: [],
    );
  }

  /// `дата`
  String get date {
    return Intl.message(
      'дата',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Вы хотите удалить запись?`
  String get confirm {
    return Intl.message(
      'Вы хотите удалить запись?',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `УДАЛИТЬ`
  String get remove {
    return Intl.message(
      'УДАЛИТЬ',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Поле не должно быть пустым`
  String get emptyFieldError {
    return Intl.message(
      'Поле не должно быть пустым',
      name: 'emptyFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Синхронизируем данные...`
  String get syncData {
    return Intl.message(
      'Синхронизируем данные...',
      name: 'syncData',
      desc: '',
      args: [],
    );
  }

  /// `Локальные данные и данные на сервере отличаются.`
  String get dataDiff {
    return Intl.message(
      'Локальные данные и данные на сервере отличаются.',
      name: 'dataDiff',
      desc: '',
      args: [],
    );
  }

  /// `Выберите источник правды`
  String get pickSource {
    return Intl.message(
      'Выберите источник правды',
      name: 'pickSource',
      desc: '',
      args: [],
    );
  }

  /// `локальные`
  String get local {
    return Intl.message(
      'локальные',
      name: 'local',
      desc: '',
      args: [],
    );
  }

  /// `сервер`
  String get remote {
    return Intl.message(
      'сервер',
      name: 'remote',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
