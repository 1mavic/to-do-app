// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru_RU locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru_RU';

  static String m0(count) => "Выполнено — ${count}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cancel": MessageLookupByLibrary.simpleMessage("ОТМЕНА"),
        "confirm":
            MessageLookupByLibrary.simpleMessage("Вы хотите удалить запись?"),
        "dataDiff": MessageLookupByLibrary.simpleMessage(
            "Локальные данные и данные на сервере отличаются."),
        "date": MessageLookupByLibrary.simpleMessage("дата"),
        "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "doSmth": MessageLookupByLibrary.simpleMessage("Что надо сделать…"),
        "doToDate": MessageLookupByLibrary.simpleMessage("Сделать до"),
        "done": m0,
        "emptyFieldError":
            MessageLookupByLibrary.simpleMessage("Поле не должно быть пустым"),
        "hight": MessageLookupByLibrary.simpleMessage("!! Высокий"),
        "importance": MessageLookupByLibrary.simpleMessage("Важность"),
        "local": MessageLookupByLibrary.simpleMessage("локальные"),
        "low": MessageLookupByLibrary.simpleMessage("Низкий"),
        "myTodos": MessageLookupByLibrary.simpleMessage("Мои дела"),
        "newItem": MessageLookupByLibrary.simpleMessage("Новое"),
        "no": MessageLookupByLibrary.simpleMessage("Нет"),
        "pickSource":
            MessageLookupByLibrary.simpleMessage("Выберите источник правды"),
        "ready": MessageLookupByLibrary.simpleMessage("ГОТОВО"),
        "remote": MessageLookupByLibrary.simpleMessage("сервер"),
        "remove": MessageLookupByLibrary.simpleMessage("УДАЛИТЬ"),
        "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "syncData":
            MessageLookupByLibrary.simpleMessage("Синхронизируем данные...")
      };
}
