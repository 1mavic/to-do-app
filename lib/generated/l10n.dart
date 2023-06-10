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
