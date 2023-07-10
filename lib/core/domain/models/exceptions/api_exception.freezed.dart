// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiException {
  String? get message => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        internalServerError,
    required TResult Function(String? message, StackTrace? stackTrace)
        requestCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult? Function(String? message, StackTrace? stackTrace)? requestCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult Function(String? message, StackTrace? stackTrace)? requestCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultApiException value) defult,
    required TResult Function(_NoInternetApiException value) noInternet,
    required TResult Function(_FormatApiException value) format,
    required TResult Function(_TimeOutApiException value) timeOut,
    required TResult Function(_BarRequestApiException value) badRequest,
    required TResult Function(_AuthApiException value) notAuthorized,
    required TResult Function(_NotFoundApiException value) notFound,
    required TResult Function(_InternalApiException value) internalServerError,
    required TResult Function(_CancelRequestException value) requestCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultApiException value)? defult,
    TResult? Function(_NoInternetApiException value)? noInternet,
    TResult? Function(_FormatApiException value)? format,
    TResult? Function(_TimeOutApiException value)? timeOut,
    TResult? Function(_BarRequestApiException value)? badRequest,
    TResult? Function(_AuthApiException value)? notAuthorized,
    TResult? Function(_NotFoundApiException value)? notFound,
    TResult? Function(_InternalApiException value)? internalServerError,
    TResult? Function(_CancelRequestException value)? requestCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultApiException value)? defult,
    TResult Function(_NoInternetApiException value)? noInternet,
    TResult Function(_FormatApiException value)? format,
    TResult Function(_TimeOutApiException value)? timeOut,
    TResult Function(_BarRequestApiException value)? badRequest,
    TResult Function(_AuthApiException value)? notAuthorized,
    TResult Function(_NotFoundApiException value)? notFound,
    TResult Function(_InternalApiException value)? internalServerError,
    TResult Function(_CancelRequestException value)? requestCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiExceptionCopyWith<ApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
  @useResult
  $Res call({String? message, StackTrace? stackTrace});
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DefaultApiExceptionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$_DefaultApiExceptionCopyWith(_$_DefaultApiException value,
          $Res Function(_$_DefaultApiException) then) =
      __$$_DefaultApiExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      String? response,
      int? code,
      StackTrace? stackTrace,
      DateTime? timeStamp});
}

/// @nodoc
class __$$_DefaultApiExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_DefaultApiException>
    implements _$$_DefaultApiExceptionCopyWith<$Res> {
  __$$_DefaultApiExceptionCopyWithImpl(_$_DefaultApiException _value,
      $Res Function(_$_DefaultApiException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? response = freezed,
    Object? code = freezed,
    Object? stackTrace = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_DefaultApiException(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DefaultApiException extends _DefaultApiException
    with DiagnosticableTreeMixin {
  const _$_DefaultApiException(
      this.message, this.response, this.code, this.stackTrace, this.timeStamp)
      : super._();

  @override
  final String? message;
  @override
  final String? response;
  @override
  final int? code;
  @override
  final StackTrace? stackTrace;
  @override
  final DateTime? timeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.defult(message: $message, response: $response, code: $code, stackTrace: $stackTrace, timeStamp: $timeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiException.defult'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('stackTrace', stackTrace))
      ..add(DiagnosticsProperty('timeStamp', timeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultApiException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, response, code, stackTrace, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefaultApiExceptionCopyWith<_$_DefaultApiException> get copyWith =>
      __$$_DefaultApiExceptionCopyWithImpl<_$_DefaultApiException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        internalServerError,
    required TResult Function(String? message, StackTrace? stackTrace)
        requestCancel,
  }) {
    return defult(message, response, code, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult? Function(String? message, StackTrace? stackTrace)? requestCancel,
  }) {
    return defult?.call(message, response, code, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult Function(String? message, StackTrace? stackTrace)? requestCancel,
    required TResult orElse(),
  }) {
    if (defult != null) {
      return defult(message, response, code, stackTrace, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultApiException value) defult,
    required TResult Function(_NoInternetApiException value) noInternet,
    required TResult Function(_FormatApiException value) format,
    required TResult Function(_TimeOutApiException value) timeOut,
    required TResult Function(_BarRequestApiException value) badRequest,
    required TResult Function(_AuthApiException value) notAuthorized,
    required TResult Function(_NotFoundApiException value) notFound,
    required TResult Function(_InternalApiException value) internalServerError,
    required TResult Function(_CancelRequestException value) requestCancel,
  }) {
    return defult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultApiException value)? defult,
    TResult? Function(_NoInternetApiException value)? noInternet,
    TResult? Function(_FormatApiException value)? format,
    TResult? Function(_TimeOutApiException value)? timeOut,
    TResult? Function(_BarRequestApiException value)? badRequest,
    TResult? Function(_AuthApiException value)? notAuthorized,
    TResult? Function(_NotFoundApiException value)? notFound,
    TResult? Function(_InternalApiException value)? internalServerError,
    TResult? Function(_CancelRequestException value)? requestCancel,
  }) {
    return defult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultApiException value)? defult,
    TResult Function(_NoInternetApiException value)? noInternet,
    TResult Function(_FormatApiException value)? format,
    TResult Function(_TimeOutApiException value)? timeOut,
    TResult Function(_BarRequestApiException value)? badRequest,
    TResult Function(_AuthApiException value)? notAuthorized,
    TResult Function(_NotFoundApiException value)? notFound,
    TResult Function(_InternalApiException value)? internalServerError,
    TResult Function(_CancelRequestException value)? requestCancel,
    required TResult orElse(),
  }) {
    if (defult != null) {
      return defult(this);
    }
    return orElse();
  }
}

abstract class _DefaultApiException extends ApiException {
  const factory _DefaultApiException(
      final String? message,
      final String? response,
      final int? code,
      final StackTrace? stackTrace,
      final DateTime? timeStamp) = _$_DefaultApiException;
  const _DefaultApiException._() : super._();

  @override
  String? get message;
  String? get response;
  int? get code;
  @override
  StackTrace? get stackTrace;
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultApiExceptionCopyWith<_$_DefaultApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoInternetApiExceptionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$_NoInternetApiExceptionCopyWith(_$_NoInternetApiException value,
          $Res Function(_$_NoInternetApiException) then) =
      __$$_NoInternetApiExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, StackTrace? stackTrace, DateTime? timeStamp});
}

/// @nodoc
class __$$_NoInternetApiExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_NoInternetApiException>
    implements _$$_NoInternetApiExceptionCopyWith<$Res> {
  __$$_NoInternetApiExceptionCopyWithImpl(_$_NoInternetApiException _value,
      $Res Function(_$_NoInternetApiException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? stackTrace = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_NoInternetApiException(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_NoInternetApiException extends _NoInternetApiException
    with DiagnosticableTreeMixin {
  const _$_NoInternetApiException(this.message, this.stackTrace, this.timeStamp)
      : super._();

  @override
  final String? message;
  @override
  final StackTrace? stackTrace;
  @override
  final DateTime? timeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.noInternet(message: $message, stackTrace: $stackTrace, timeStamp: $timeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiException.noInternet'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('stackTrace', stackTrace))
      ..add(DiagnosticsProperty('timeStamp', timeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoInternetApiException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoInternetApiExceptionCopyWith<_$_NoInternetApiException> get copyWith =>
      __$$_NoInternetApiExceptionCopyWithImpl<_$_NoInternetApiException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        internalServerError,
    required TResult Function(String? message, StackTrace? stackTrace)
        requestCancel,
  }) {
    return noInternet(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult? Function(String? message, StackTrace? stackTrace)? requestCancel,
  }) {
    return noInternet?.call(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult Function(String? message, StackTrace? stackTrace)? requestCancel,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(message, stackTrace, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultApiException value) defult,
    required TResult Function(_NoInternetApiException value) noInternet,
    required TResult Function(_FormatApiException value) format,
    required TResult Function(_TimeOutApiException value) timeOut,
    required TResult Function(_BarRequestApiException value) badRequest,
    required TResult Function(_AuthApiException value) notAuthorized,
    required TResult Function(_NotFoundApiException value) notFound,
    required TResult Function(_InternalApiException value) internalServerError,
    required TResult Function(_CancelRequestException value) requestCancel,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultApiException value)? defult,
    TResult? Function(_NoInternetApiException value)? noInternet,
    TResult? Function(_FormatApiException value)? format,
    TResult? Function(_TimeOutApiException value)? timeOut,
    TResult? Function(_BarRequestApiException value)? badRequest,
    TResult? Function(_AuthApiException value)? notAuthorized,
    TResult? Function(_NotFoundApiException value)? notFound,
    TResult? Function(_InternalApiException value)? internalServerError,
    TResult? Function(_CancelRequestException value)? requestCancel,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultApiException value)? defult,
    TResult Function(_NoInternetApiException value)? noInternet,
    TResult Function(_FormatApiException value)? format,
    TResult Function(_TimeOutApiException value)? timeOut,
    TResult Function(_BarRequestApiException value)? badRequest,
    TResult Function(_AuthApiException value)? notAuthorized,
    TResult Function(_NotFoundApiException value)? notFound,
    TResult Function(_InternalApiException value)? internalServerError,
    TResult Function(_CancelRequestException value)? requestCancel,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternetApiException extends ApiException {
  const factory _NoInternetApiException(
      final String? message,
      final StackTrace? stackTrace,
      final DateTime? timeStamp) = _$_NoInternetApiException;
  const _NoInternetApiException._() : super._();

  @override
  String? get message;
  @override
  StackTrace? get stackTrace;
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_NoInternetApiExceptionCopyWith<_$_NoInternetApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FormatApiExceptionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$_FormatApiExceptionCopyWith(_$_FormatApiException value,
          $Res Function(_$_FormatApiException) then) =
      __$$_FormatApiExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, StackTrace? stackTrace, DateTime? timeStamp});
}

/// @nodoc
class __$$_FormatApiExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_FormatApiException>
    implements _$$_FormatApiExceptionCopyWith<$Res> {
  __$$_FormatApiExceptionCopyWithImpl(
      _$_FormatApiException _value, $Res Function(_$_FormatApiException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? stackTrace = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_FormatApiException(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_FormatApiException extends _FormatApiException
    with DiagnosticableTreeMixin {
  const _$_FormatApiException(this.message, this.stackTrace, this.timeStamp)
      : super._();

  @override
  final String? message;
  @override
  final StackTrace? stackTrace;
  @override
  final DateTime? timeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.format(message: $message, stackTrace: $stackTrace, timeStamp: $timeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiException.format'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('stackTrace', stackTrace))
      ..add(DiagnosticsProperty('timeStamp', timeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormatApiException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormatApiExceptionCopyWith<_$_FormatApiException> get copyWith =>
      __$$_FormatApiExceptionCopyWithImpl<_$_FormatApiException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        internalServerError,
    required TResult Function(String? message, StackTrace? stackTrace)
        requestCancel,
  }) {
    return format(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult? Function(String? message, StackTrace? stackTrace)? requestCancel,
  }) {
    return format?.call(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult Function(String? message, StackTrace? stackTrace)? requestCancel,
    required TResult orElse(),
  }) {
    if (format != null) {
      return format(message, stackTrace, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultApiException value) defult,
    required TResult Function(_NoInternetApiException value) noInternet,
    required TResult Function(_FormatApiException value) format,
    required TResult Function(_TimeOutApiException value) timeOut,
    required TResult Function(_BarRequestApiException value) badRequest,
    required TResult Function(_AuthApiException value) notAuthorized,
    required TResult Function(_NotFoundApiException value) notFound,
    required TResult Function(_InternalApiException value) internalServerError,
    required TResult Function(_CancelRequestException value) requestCancel,
  }) {
    return format(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultApiException value)? defult,
    TResult? Function(_NoInternetApiException value)? noInternet,
    TResult? Function(_FormatApiException value)? format,
    TResult? Function(_TimeOutApiException value)? timeOut,
    TResult? Function(_BarRequestApiException value)? badRequest,
    TResult? Function(_AuthApiException value)? notAuthorized,
    TResult? Function(_NotFoundApiException value)? notFound,
    TResult? Function(_InternalApiException value)? internalServerError,
    TResult? Function(_CancelRequestException value)? requestCancel,
  }) {
    return format?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultApiException value)? defult,
    TResult Function(_NoInternetApiException value)? noInternet,
    TResult Function(_FormatApiException value)? format,
    TResult Function(_TimeOutApiException value)? timeOut,
    TResult Function(_BarRequestApiException value)? badRequest,
    TResult Function(_AuthApiException value)? notAuthorized,
    TResult Function(_NotFoundApiException value)? notFound,
    TResult Function(_InternalApiException value)? internalServerError,
    TResult Function(_CancelRequestException value)? requestCancel,
    required TResult orElse(),
  }) {
    if (format != null) {
      return format(this);
    }
    return orElse();
  }
}

abstract class _FormatApiException extends ApiException {
  const factory _FormatApiException(
      final String? message,
      final StackTrace? stackTrace,
      final DateTime? timeStamp) = _$_FormatApiException;
  const _FormatApiException._() : super._();

  @override
  String? get message;
  @override
  StackTrace? get stackTrace;
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_FormatApiExceptionCopyWith<_$_FormatApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimeOutApiExceptionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$_TimeOutApiExceptionCopyWith(_$_TimeOutApiException value,
          $Res Function(_$_TimeOutApiException) then) =
      __$$_TimeOutApiExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, StackTrace? stackTrace, DateTime? timeStamp});
}

/// @nodoc
class __$$_TimeOutApiExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_TimeOutApiException>
    implements _$$_TimeOutApiExceptionCopyWith<$Res> {
  __$$_TimeOutApiExceptionCopyWithImpl(_$_TimeOutApiException _value,
      $Res Function(_$_TimeOutApiException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? stackTrace = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_TimeOutApiException(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_TimeOutApiException extends _TimeOutApiException
    with DiagnosticableTreeMixin {
  const _$_TimeOutApiException(this.message, this.stackTrace, this.timeStamp)
      : super._();

  @override
  final String? message;
  @override
  final StackTrace? stackTrace;
  @override
  final DateTime? timeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.timeOut(message: $message, stackTrace: $stackTrace, timeStamp: $timeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiException.timeOut'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('stackTrace', stackTrace))
      ..add(DiagnosticsProperty('timeStamp', timeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeOutApiException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeOutApiExceptionCopyWith<_$_TimeOutApiException> get copyWith =>
      __$$_TimeOutApiExceptionCopyWithImpl<_$_TimeOutApiException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        internalServerError,
    required TResult Function(String? message, StackTrace? stackTrace)
        requestCancel,
  }) {
    return timeOut(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult? Function(String? message, StackTrace? stackTrace)? requestCancel,
  }) {
    return timeOut?.call(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult Function(String? message, StackTrace? stackTrace)? requestCancel,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(message, stackTrace, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultApiException value) defult,
    required TResult Function(_NoInternetApiException value) noInternet,
    required TResult Function(_FormatApiException value) format,
    required TResult Function(_TimeOutApiException value) timeOut,
    required TResult Function(_BarRequestApiException value) badRequest,
    required TResult Function(_AuthApiException value) notAuthorized,
    required TResult Function(_NotFoundApiException value) notFound,
    required TResult Function(_InternalApiException value) internalServerError,
    required TResult Function(_CancelRequestException value) requestCancel,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultApiException value)? defult,
    TResult? Function(_NoInternetApiException value)? noInternet,
    TResult? Function(_FormatApiException value)? format,
    TResult? Function(_TimeOutApiException value)? timeOut,
    TResult? Function(_BarRequestApiException value)? badRequest,
    TResult? Function(_AuthApiException value)? notAuthorized,
    TResult? Function(_NotFoundApiException value)? notFound,
    TResult? Function(_InternalApiException value)? internalServerError,
    TResult? Function(_CancelRequestException value)? requestCancel,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultApiException value)? defult,
    TResult Function(_NoInternetApiException value)? noInternet,
    TResult Function(_FormatApiException value)? format,
    TResult Function(_TimeOutApiException value)? timeOut,
    TResult Function(_BarRequestApiException value)? badRequest,
    TResult Function(_AuthApiException value)? notAuthorized,
    TResult Function(_NotFoundApiException value)? notFound,
    TResult Function(_InternalApiException value)? internalServerError,
    TResult Function(_CancelRequestException value)? requestCancel,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class _TimeOutApiException extends ApiException {
  const factory _TimeOutApiException(
      final String? message,
      final StackTrace? stackTrace,
      final DateTime? timeStamp) = _$_TimeOutApiException;
  const _TimeOutApiException._() : super._();

  @override
  String? get message;
  @override
  StackTrace? get stackTrace;
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_TimeOutApiExceptionCopyWith<_$_TimeOutApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BarRequestApiExceptionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$_BarRequestApiExceptionCopyWith(_$_BarRequestApiException value,
          $Res Function(_$_BarRequestApiException) then) =
      __$$_BarRequestApiExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      String? response,
      StackTrace? stackTrace,
      DateTime? timeStamp});
}

/// @nodoc
class __$$_BarRequestApiExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_BarRequestApiException>
    implements _$$_BarRequestApiExceptionCopyWith<$Res> {
  __$$_BarRequestApiExceptionCopyWithImpl(_$_BarRequestApiException _value,
      $Res Function(_$_BarRequestApiException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? response = freezed,
    Object? stackTrace = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_BarRequestApiException(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_BarRequestApiException extends _BarRequestApiException
    with DiagnosticableTreeMixin {
  const _$_BarRequestApiException(
      this.message, this.response, this.stackTrace, this.timeStamp)
      : super._();

  @override
  final String? message;
  @override
  final String? response;
  @override
  final StackTrace? stackTrace;
  @override
  final DateTime? timeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.badRequest(message: $message, response: $response, stackTrace: $stackTrace, timeStamp: $timeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiException.badRequest'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('stackTrace', stackTrace))
      ..add(DiagnosticsProperty('timeStamp', timeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BarRequestApiException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, response, stackTrace, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BarRequestApiExceptionCopyWith<_$_BarRequestApiException> get copyWith =>
      __$$_BarRequestApiExceptionCopyWithImpl<_$_BarRequestApiException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        internalServerError,
    required TResult Function(String? message, StackTrace? stackTrace)
        requestCancel,
  }) {
    return badRequest(message, response, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult? Function(String? message, StackTrace? stackTrace)? requestCancel,
  }) {
    return badRequest?.call(message, response, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult Function(String? message, StackTrace? stackTrace)? requestCancel,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message, response, stackTrace, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultApiException value) defult,
    required TResult Function(_NoInternetApiException value) noInternet,
    required TResult Function(_FormatApiException value) format,
    required TResult Function(_TimeOutApiException value) timeOut,
    required TResult Function(_BarRequestApiException value) badRequest,
    required TResult Function(_AuthApiException value) notAuthorized,
    required TResult Function(_NotFoundApiException value) notFound,
    required TResult Function(_InternalApiException value) internalServerError,
    required TResult Function(_CancelRequestException value) requestCancel,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultApiException value)? defult,
    TResult? Function(_NoInternetApiException value)? noInternet,
    TResult? Function(_FormatApiException value)? format,
    TResult? Function(_TimeOutApiException value)? timeOut,
    TResult? Function(_BarRequestApiException value)? badRequest,
    TResult? Function(_AuthApiException value)? notAuthorized,
    TResult? Function(_NotFoundApiException value)? notFound,
    TResult? Function(_InternalApiException value)? internalServerError,
    TResult? Function(_CancelRequestException value)? requestCancel,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultApiException value)? defult,
    TResult Function(_NoInternetApiException value)? noInternet,
    TResult Function(_FormatApiException value)? format,
    TResult Function(_TimeOutApiException value)? timeOut,
    TResult Function(_BarRequestApiException value)? badRequest,
    TResult Function(_AuthApiException value)? notAuthorized,
    TResult Function(_NotFoundApiException value)? notFound,
    TResult Function(_InternalApiException value)? internalServerError,
    TResult Function(_CancelRequestException value)? requestCancel,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BarRequestApiException extends ApiException {
  const factory _BarRequestApiException(
      final String? message,
      final String? response,
      final StackTrace? stackTrace,
      final DateTime? timeStamp) = _$_BarRequestApiException;
  const _BarRequestApiException._() : super._();

  @override
  String? get message;
  String? get response;
  @override
  StackTrace? get stackTrace;
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_BarRequestApiExceptionCopyWith<_$_BarRequestApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthApiExceptionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$_AuthApiExceptionCopyWith(
          _$_AuthApiException value, $Res Function(_$_AuthApiException) then) =
      __$$_AuthApiExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, StackTrace? stackTrace, DateTime? timeStamp});
}

/// @nodoc
class __$$_AuthApiExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_AuthApiException>
    implements _$$_AuthApiExceptionCopyWith<$Res> {
  __$$_AuthApiExceptionCopyWithImpl(
      _$_AuthApiException _value, $Res Function(_$_AuthApiException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? stackTrace = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_AuthApiException(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_AuthApiException extends _AuthApiException
    with DiagnosticableTreeMixin {
  const _$_AuthApiException(this.message, this.stackTrace, this.timeStamp)
      : super._();

  @override
  final String? message;
  @override
  final StackTrace? stackTrace;
  @override
  final DateTime? timeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.notAuthorized(message: $message, stackTrace: $stackTrace, timeStamp: $timeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiException.notAuthorized'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('stackTrace', stackTrace))
      ..add(DiagnosticsProperty('timeStamp', timeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthApiException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthApiExceptionCopyWith<_$_AuthApiException> get copyWith =>
      __$$_AuthApiExceptionCopyWithImpl<_$_AuthApiException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        internalServerError,
    required TResult Function(String? message, StackTrace? stackTrace)
        requestCancel,
  }) {
    return notAuthorized(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult? Function(String? message, StackTrace? stackTrace)? requestCancel,
  }) {
    return notAuthorized?.call(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult Function(String? message, StackTrace? stackTrace)? requestCancel,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(message, stackTrace, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultApiException value) defult,
    required TResult Function(_NoInternetApiException value) noInternet,
    required TResult Function(_FormatApiException value) format,
    required TResult Function(_TimeOutApiException value) timeOut,
    required TResult Function(_BarRequestApiException value) badRequest,
    required TResult Function(_AuthApiException value) notAuthorized,
    required TResult Function(_NotFoundApiException value) notFound,
    required TResult Function(_InternalApiException value) internalServerError,
    required TResult Function(_CancelRequestException value) requestCancel,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultApiException value)? defult,
    TResult? Function(_NoInternetApiException value)? noInternet,
    TResult? Function(_FormatApiException value)? format,
    TResult? Function(_TimeOutApiException value)? timeOut,
    TResult? Function(_BarRequestApiException value)? badRequest,
    TResult? Function(_AuthApiException value)? notAuthorized,
    TResult? Function(_NotFoundApiException value)? notFound,
    TResult? Function(_InternalApiException value)? internalServerError,
    TResult? Function(_CancelRequestException value)? requestCancel,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultApiException value)? defult,
    TResult Function(_NoInternetApiException value)? noInternet,
    TResult Function(_FormatApiException value)? format,
    TResult Function(_TimeOutApiException value)? timeOut,
    TResult Function(_BarRequestApiException value)? badRequest,
    TResult Function(_AuthApiException value)? notAuthorized,
    TResult Function(_NotFoundApiException value)? notFound,
    TResult Function(_InternalApiException value)? internalServerError,
    TResult Function(_CancelRequestException value)? requestCancel,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class _AuthApiException extends ApiException {
  const factory _AuthApiException(
      final String? message,
      final StackTrace? stackTrace,
      final DateTime? timeStamp) = _$_AuthApiException;
  const _AuthApiException._() : super._();

  @override
  String? get message;
  @override
  StackTrace? get stackTrace;
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_AuthApiExceptionCopyWith<_$_AuthApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotFoundApiExceptionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$_NotFoundApiExceptionCopyWith(_$_NotFoundApiException value,
          $Res Function(_$_NotFoundApiException) then) =
      __$$_NotFoundApiExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      String? response,
      StackTrace? stackTrace,
      DateTime? timeStamp});
}

/// @nodoc
class __$$_NotFoundApiExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_NotFoundApiException>
    implements _$$_NotFoundApiExceptionCopyWith<$Res> {
  __$$_NotFoundApiExceptionCopyWithImpl(_$_NotFoundApiException _value,
      $Res Function(_$_NotFoundApiException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? response = freezed,
    Object? stackTrace = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_NotFoundApiException(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_NotFoundApiException extends _NotFoundApiException
    with DiagnosticableTreeMixin {
  const _$_NotFoundApiException(
      this.message, this.response, this.stackTrace, this.timeStamp)
      : super._();

  @override
  final String? message;
  @override
  final String? response;
  @override
  final StackTrace? stackTrace;
  @override
  final DateTime? timeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.notFound(message: $message, response: $response, stackTrace: $stackTrace, timeStamp: $timeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiException.notFound'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('stackTrace', stackTrace))
      ..add(DiagnosticsProperty('timeStamp', timeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotFoundApiException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, response, stackTrace, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotFoundApiExceptionCopyWith<_$_NotFoundApiException> get copyWith =>
      __$$_NotFoundApiExceptionCopyWithImpl<_$_NotFoundApiException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        internalServerError,
    required TResult Function(String? message, StackTrace? stackTrace)
        requestCancel,
  }) {
    return notFound(message, response, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult? Function(String? message, StackTrace? stackTrace)? requestCancel,
  }) {
    return notFound?.call(message, response, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult Function(String? message, StackTrace? stackTrace)? requestCancel,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message, response, stackTrace, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultApiException value) defult,
    required TResult Function(_NoInternetApiException value) noInternet,
    required TResult Function(_FormatApiException value) format,
    required TResult Function(_TimeOutApiException value) timeOut,
    required TResult Function(_BarRequestApiException value) badRequest,
    required TResult Function(_AuthApiException value) notAuthorized,
    required TResult Function(_NotFoundApiException value) notFound,
    required TResult Function(_InternalApiException value) internalServerError,
    required TResult Function(_CancelRequestException value) requestCancel,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultApiException value)? defult,
    TResult? Function(_NoInternetApiException value)? noInternet,
    TResult? Function(_FormatApiException value)? format,
    TResult? Function(_TimeOutApiException value)? timeOut,
    TResult? Function(_BarRequestApiException value)? badRequest,
    TResult? Function(_AuthApiException value)? notAuthorized,
    TResult? Function(_NotFoundApiException value)? notFound,
    TResult? Function(_InternalApiException value)? internalServerError,
    TResult? Function(_CancelRequestException value)? requestCancel,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultApiException value)? defult,
    TResult Function(_NoInternetApiException value)? noInternet,
    TResult Function(_FormatApiException value)? format,
    TResult Function(_TimeOutApiException value)? timeOut,
    TResult Function(_BarRequestApiException value)? badRequest,
    TResult Function(_AuthApiException value)? notAuthorized,
    TResult Function(_NotFoundApiException value)? notFound,
    TResult Function(_InternalApiException value)? internalServerError,
    TResult Function(_CancelRequestException value)? requestCancel,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFoundApiException extends ApiException {
  const factory _NotFoundApiException(
      final String? message,
      final String? response,
      final StackTrace? stackTrace,
      final DateTime? timeStamp) = _$_NotFoundApiException;
  const _NotFoundApiException._() : super._();

  @override
  String? get message;
  String? get response;
  @override
  StackTrace? get stackTrace;
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_NotFoundApiExceptionCopyWith<_$_NotFoundApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InternalApiExceptionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$_InternalApiExceptionCopyWith(_$_InternalApiException value,
          $Res Function(_$_InternalApiException) then) =
      __$$_InternalApiExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, StackTrace? stackTrace, DateTime? timeStamp});
}

/// @nodoc
class __$$_InternalApiExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_InternalApiException>
    implements _$$_InternalApiExceptionCopyWith<$Res> {
  __$$_InternalApiExceptionCopyWithImpl(_$_InternalApiException _value,
      $Res Function(_$_InternalApiException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? stackTrace = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_InternalApiException(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_InternalApiException extends _InternalApiException
    with DiagnosticableTreeMixin {
  const _$_InternalApiException(this.message, this.stackTrace, this.timeStamp)
      : super._();

  @override
  final String? message;
  @override
  final StackTrace? stackTrace;
  @override
  final DateTime? timeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.internalServerError(message: $message, stackTrace: $stackTrace, timeStamp: $timeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiException.internalServerError'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('stackTrace', stackTrace))
      ..add(DiagnosticsProperty('timeStamp', timeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternalApiException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InternalApiExceptionCopyWith<_$_InternalApiException> get copyWith =>
      __$$_InternalApiExceptionCopyWithImpl<_$_InternalApiException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        internalServerError,
    required TResult Function(String? message, StackTrace? stackTrace)
        requestCancel,
  }) {
    return internalServerError(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult? Function(String? message, StackTrace? stackTrace)? requestCancel,
  }) {
    return internalServerError?.call(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult Function(String? message, StackTrace? stackTrace)? requestCancel,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(message, stackTrace, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultApiException value) defult,
    required TResult Function(_NoInternetApiException value) noInternet,
    required TResult Function(_FormatApiException value) format,
    required TResult Function(_TimeOutApiException value) timeOut,
    required TResult Function(_BarRequestApiException value) badRequest,
    required TResult Function(_AuthApiException value) notAuthorized,
    required TResult Function(_NotFoundApiException value) notFound,
    required TResult Function(_InternalApiException value) internalServerError,
    required TResult Function(_CancelRequestException value) requestCancel,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultApiException value)? defult,
    TResult? Function(_NoInternetApiException value)? noInternet,
    TResult? Function(_FormatApiException value)? format,
    TResult? Function(_TimeOutApiException value)? timeOut,
    TResult? Function(_BarRequestApiException value)? badRequest,
    TResult? Function(_AuthApiException value)? notAuthorized,
    TResult? Function(_NotFoundApiException value)? notFound,
    TResult? Function(_InternalApiException value)? internalServerError,
    TResult? Function(_CancelRequestException value)? requestCancel,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultApiException value)? defult,
    TResult Function(_NoInternetApiException value)? noInternet,
    TResult Function(_FormatApiException value)? format,
    TResult Function(_TimeOutApiException value)? timeOut,
    TResult Function(_BarRequestApiException value)? badRequest,
    TResult Function(_AuthApiException value)? notAuthorized,
    TResult Function(_NotFoundApiException value)? notFound,
    TResult Function(_InternalApiException value)? internalServerError,
    TResult Function(_CancelRequestException value)? requestCancel,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class _InternalApiException extends ApiException {
  const factory _InternalApiException(
      final String? message,
      final StackTrace? stackTrace,
      final DateTime? timeStamp) = _$_InternalApiException;
  const _InternalApiException._() : super._();

  @override
  String? get message;
  @override
  StackTrace? get stackTrace;
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_InternalApiExceptionCopyWith<_$_InternalApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelRequestExceptionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$_CancelRequestExceptionCopyWith(_$_CancelRequestException value,
          $Res Function(_$_CancelRequestException) then) =
      __$$_CancelRequestExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, StackTrace? stackTrace});
}

/// @nodoc
class __$$_CancelRequestExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_CancelRequestException>
    implements _$$_CancelRequestExceptionCopyWith<$Res> {
  __$$_CancelRequestExceptionCopyWithImpl(_$_CancelRequestException _value,
      $Res Function(_$_CancelRequestException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_CancelRequestException(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_CancelRequestException extends _CancelRequestException
    with DiagnosticableTreeMixin {
  const _$_CancelRequestException(this.message, this.stackTrace) : super._();

  @override
  final String? message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.requestCancel(message: $message, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiException.requestCancel'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelRequestException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelRequestExceptionCopyWith<_$_CancelRequestException> get copyWith =>
      __$$_CancelRequestExceptionCopyWithImpl<_$_CancelRequestException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            StackTrace? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)
        internalServerError,
    required TResult Function(String? message, StackTrace? stackTrace)
        requestCancel,
  }) {
    return requestCancel(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult? Function(String? message, StackTrace? stackTrace)? requestCancel,
  }) {
    return requestCancel?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            StackTrace? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, StackTrace? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(
            String? message, StackTrace? stackTrace, DateTime? timeStamp)?
        internalServerError,
    TResult Function(String? message, StackTrace? stackTrace)? requestCancel,
    required TResult orElse(),
  }) {
    if (requestCancel != null) {
      return requestCancel(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultApiException value) defult,
    required TResult Function(_NoInternetApiException value) noInternet,
    required TResult Function(_FormatApiException value) format,
    required TResult Function(_TimeOutApiException value) timeOut,
    required TResult Function(_BarRequestApiException value) badRequest,
    required TResult Function(_AuthApiException value) notAuthorized,
    required TResult Function(_NotFoundApiException value) notFound,
    required TResult Function(_InternalApiException value) internalServerError,
    required TResult Function(_CancelRequestException value) requestCancel,
  }) {
    return requestCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultApiException value)? defult,
    TResult? Function(_NoInternetApiException value)? noInternet,
    TResult? Function(_FormatApiException value)? format,
    TResult? Function(_TimeOutApiException value)? timeOut,
    TResult? Function(_BarRequestApiException value)? badRequest,
    TResult? Function(_AuthApiException value)? notAuthorized,
    TResult? Function(_NotFoundApiException value)? notFound,
    TResult? Function(_InternalApiException value)? internalServerError,
    TResult? Function(_CancelRequestException value)? requestCancel,
  }) {
    return requestCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultApiException value)? defult,
    TResult Function(_NoInternetApiException value)? noInternet,
    TResult Function(_FormatApiException value)? format,
    TResult Function(_TimeOutApiException value)? timeOut,
    TResult Function(_BarRequestApiException value)? badRequest,
    TResult Function(_AuthApiException value)? notAuthorized,
    TResult Function(_NotFoundApiException value)? notFound,
    TResult Function(_InternalApiException value)? internalServerError,
    TResult Function(_CancelRequestException value)? requestCancel,
    required TResult orElse(),
  }) {
    if (requestCancel != null) {
      return requestCancel(this);
    }
    return orElse();
  }
}

abstract class _CancelRequestException extends ApiException {
  const factory _CancelRequestException(
          final String? message, final StackTrace? stackTrace) =
      _$_CancelRequestException;
  const _CancelRequestException._() : super._();

  @override
  String? get message;
  @override
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_CancelRequestExceptionCopyWith<_$_CancelRequestException> get copyWith =>
      throw _privateConstructorUsedError;
}
