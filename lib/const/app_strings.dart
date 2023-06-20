/// class with constat string
abstract class AppString {}

/// class with cons error strings

abstract class ErrorStrings {
  /// init local db error msg
  static const dbInit = 'Ошибка при инициализации баззы данных';

  /// read and write in local db error msg
  static const dbReadWrite = 'Ошибка при инициализации баззы данных';

  /// unknow error
  static const unknowError = 'Произошла ошибка. Повторите действие позже.';

  /// no internet error
  static const noInternet = 'Отсутствует интернет соединение';

  /// responce format exc
  static const formatExc = 'Ошибка форматирования ответа.';

  /// timeout exception
  static const timeOut = 'Таймаут ответа.';
}
