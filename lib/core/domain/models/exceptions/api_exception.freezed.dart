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

ApiException _$ApiExceptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'defult':
      return _DefaultApiException.fromJson(json);
    case 'noInternet':
      return _NoInternetApiException.fromJson(json);
    case 'format':
      return _FormatApiException.fromJson(json);
    case 'timeOut':
      return _TimeOutApiException.fromJson(json);
    case 'badRequest':
      return _BarRequestApiException.fromJson(json);
    case 'notAuthorized':
      return _AuthApiException.fromJson(json);
    case 'notFound':
      return _NotFoundApiException.fromJson(json);
    case 'internalServerError':
      return _InternalApiException.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiException',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiException {
  String? get message => throw _privateConstructorUsedError;
  String? get stackTrace => throw _privateConstructorUsedError;
  DateTime? get timeStamp => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        internalServerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
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
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call({String? message, String? stackTrace, DateTime? timeStamp});
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
    Object? timeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      String? stackTrace,
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
              as String?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefaultApiException extends _DefaultApiException {
  const _$_DefaultApiException(
      this.message, this.response, this.code, this.stackTrace, this.timeStamp,
      {final String? $type})
      : $type = $type ?? 'defult',
        super._();

  factory _$_DefaultApiException.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultApiExceptionFromJson(json);

  @override
  final String? message;
  @override
  final String? response;
  @override
  final int? code;
  @override
  final String? stackTrace;
  @override
  final DateTime? timeStamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiException.defult(message: $message, response: $response, code: $code, stackTrace: $stackTrace, timeStamp: $timeStamp)';
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

  @JsonKey(ignore: true)
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
            String? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        internalServerError,
  }) {
    return defult(message, response, code, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
  }) {
    return defult?.call(message, response, code, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
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
    required TResult orElse(),
  }) {
    if (defult != null) {
      return defult(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultApiExceptionToJson(
      this,
    );
  }
}

abstract class _DefaultApiException extends ApiException {
  const factory _DefaultApiException(
      final String? message,
      final String? response,
      final int? code,
      final String? stackTrace,
      final DateTime? timeStamp) = _$_DefaultApiException;
  const _DefaultApiException._() : super._();

  factory _DefaultApiException.fromJson(Map<String, dynamic> json) =
      _$_DefaultApiException.fromJson;

  @override
  String? get message;
  String? get response;
  int? get code;
  @override
  String? get stackTrace;
  @override
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
  $Res call({String? message, String? stackTrace, DateTime? timeStamp});
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
              as String?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoInternetApiException extends _NoInternetApiException {
  const _$_NoInternetApiException(this.message, this.stackTrace, this.timeStamp,
      {final String? $type})
      : $type = $type ?? 'noInternet',
        super._();

  factory _$_NoInternetApiException.fromJson(Map<String, dynamic> json) =>
      _$$_NoInternetApiExceptionFromJson(json);

  @override
  final String? message;
  @override
  final String? stackTrace;
  @override
  final DateTime? timeStamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiException.noInternet(message: $message, stackTrace: $stackTrace, timeStamp: $timeStamp)';
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

  @JsonKey(ignore: true)
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
            String? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        internalServerError,
  }) {
    return noInternet(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
  }) {
    return noInternet?.call(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
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
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoInternetApiExceptionToJson(
      this,
    );
  }
}

abstract class _NoInternetApiException extends ApiException {
  const factory _NoInternetApiException(
      final String? message,
      final String? stackTrace,
      final DateTime? timeStamp) = _$_NoInternetApiException;
  const _NoInternetApiException._() : super._();

  factory _NoInternetApiException.fromJson(Map<String, dynamic> json) =
      _$_NoInternetApiException.fromJson;

  @override
  String? get message;
  @override
  String? get stackTrace;
  @override
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
  $Res call({String? message, String? stackTrace, DateTime? timeStamp});
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
              as String?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormatApiException extends _FormatApiException {
  const _$_FormatApiException(this.message, this.stackTrace, this.timeStamp,
      {final String? $type})
      : $type = $type ?? 'format',
        super._();

  factory _$_FormatApiException.fromJson(Map<String, dynamic> json) =>
      _$$_FormatApiExceptionFromJson(json);

  @override
  final String? message;
  @override
  final String? stackTrace;
  @override
  final DateTime? timeStamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiException.format(message: $message, stackTrace: $stackTrace, timeStamp: $timeStamp)';
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

  @JsonKey(ignore: true)
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
            String? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        internalServerError,
  }) {
    return format(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
  }) {
    return format?.call(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
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
    required TResult orElse(),
  }) {
    if (format != null) {
      return format(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormatApiExceptionToJson(
      this,
    );
  }
}

abstract class _FormatApiException extends ApiException {
  const factory _FormatApiException(
      final String? message,
      final String? stackTrace,
      final DateTime? timeStamp) = _$_FormatApiException;
  const _FormatApiException._() : super._();

  factory _FormatApiException.fromJson(Map<String, dynamic> json) =
      _$_FormatApiException.fromJson;

  @override
  String? get message;
  @override
  String? get stackTrace;
  @override
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
  $Res call({String? message, String? stackTrace, DateTime? timeStamp});
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
              as String?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeOutApiException extends _TimeOutApiException {
  const _$_TimeOutApiException(this.message, this.stackTrace, this.timeStamp,
      {final String? $type})
      : $type = $type ?? 'timeOut',
        super._();

  factory _$_TimeOutApiException.fromJson(Map<String, dynamic> json) =>
      _$$_TimeOutApiExceptionFromJson(json);

  @override
  final String? message;
  @override
  final String? stackTrace;
  @override
  final DateTime? timeStamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiException.timeOut(message: $message, stackTrace: $stackTrace, timeStamp: $timeStamp)';
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

  @JsonKey(ignore: true)
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
            String? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        internalServerError,
  }) {
    return timeOut(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
  }) {
    return timeOut?.call(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
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
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeOutApiExceptionToJson(
      this,
    );
  }
}

abstract class _TimeOutApiException extends ApiException {
  const factory _TimeOutApiException(
      final String? message,
      final String? stackTrace,
      final DateTime? timeStamp) = _$_TimeOutApiException;
  const _TimeOutApiException._() : super._();

  factory _TimeOutApiException.fromJson(Map<String, dynamic> json) =
      _$_TimeOutApiException.fromJson;

  @override
  String? get message;
  @override
  String? get stackTrace;
  @override
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
      String? stackTrace,
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
              as String?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BarRequestApiException extends _BarRequestApiException {
  const _$_BarRequestApiException(
      this.message, this.response, this.stackTrace, this.timeStamp,
      {final String? $type})
      : $type = $type ?? 'badRequest',
        super._();

  factory _$_BarRequestApiException.fromJson(Map<String, dynamic> json) =>
      _$$_BarRequestApiExceptionFromJson(json);

  @override
  final String? message;
  @override
  final String? response;
  @override
  final String? stackTrace;
  @override
  final DateTime? timeStamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiException.badRequest(message: $message, response: $response, stackTrace: $stackTrace, timeStamp: $timeStamp)';
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

  @JsonKey(ignore: true)
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
            String? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        internalServerError,
  }) {
    return badRequest(message, response, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
  }) {
    return badRequest?.call(message, response, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
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
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BarRequestApiExceptionToJson(
      this,
    );
  }
}

abstract class _BarRequestApiException extends ApiException {
  const factory _BarRequestApiException(
      final String? message,
      final String? response,
      final String? stackTrace,
      final DateTime? timeStamp) = _$_BarRequestApiException;
  const _BarRequestApiException._() : super._();

  factory _BarRequestApiException.fromJson(Map<String, dynamic> json) =
      _$_BarRequestApiException.fromJson;

  @override
  String? get message;
  String? get response;
  @override
  String? get stackTrace;
  @override
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
  $Res call({String? message, String? stackTrace, DateTime? timeStamp});
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
              as String?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthApiException extends _AuthApiException {
  const _$_AuthApiException(this.message, this.stackTrace, this.timeStamp,
      {final String? $type})
      : $type = $type ?? 'notAuthorized',
        super._();

  factory _$_AuthApiException.fromJson(Map<String, dynamic> json) =>
      _$$_AuthApiExceptionFromJson(json);

  @override
  final String? message;
  @override
  final String? stackTrace;
  @override
  final DateTime? timeStamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiException.notAuthorized(message: $message, stackTrace: $stackTrace, timeStamp: $timeStamp)';
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

  @JsonKey(ignore: true)
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
            String? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        internalServerError,
  }) {
    return notAuthorized(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
  }) {
    return notAuthorized?.call(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
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
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthApiExceptionToJson(
      this,
    );
  }
}

abstract class _AuthApiException extends ApiException {
  const factory _AuthApiException(
      final String? message,
      final String? stackTrace,
      final DateTime? timeStamp) = _$_AuthApiException;
  const _AuthApiException._() : super._();

  factory _AuthApiException.fromJson(Map<String, dynamic> json) =
      _$_AuthApiException.fromJson;

  @override
  String? get message;
  @override
  String? get stackTrace;
  @override
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
      String? stackTrace,
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
              as String?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotFoundApiException extends _NotFoundApiException {
  const _$_NotFoundApiException(
      this.message, this.response, this.stackTrace, this.timeStamp,
      {final String? $type})
      : $type = $type ?? 'notFound',
        super._();

  factory _$_NotFoundApiException.fromJson(Map<String, dynamic> json) =>
      _$$_NotFoundApiExceptionFromJson(json);

  @override
  final String? message;
  @override
  final String? response;
  @override
  final String? stackTrace;
  @override
  final DateTime? timeStamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiException.notFound(message: $message, response: $response, stackTrace: $stackTrace, timeStamp: $timeStamp)';
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

  @JsonKey(ignore: true)
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
            String? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        internalServerError,
  }) {
    return notFound(message, response, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
  }) {
    return notFound?.call(message, response, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
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
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotFoundApiExceptionToJson(
      this,
    );
  }
}

abstract class _NotFoundApiException extends ApiException {
  const factory _NotFoundApiException(
      final String? message,
      final String? response,
      final String? stackTrace,
      final DateTime? timeStamp) = _$_NotFoundApiException;
  const _NotFoundApiException._() : super._();

  factory _NotFoundApiException.fromJson(Map<String, dynamic> json) =
      _$_NotFoundApiException.fromJson;

  @override
  String? get message;
  String? get response;
  @override
  String? get stackTrace;
  @override
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
  $Res call({String? message, String? stackTrace, DateTime? timeStamp});
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
              as String?,
      freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InternalApiException extends _InternalApiException {
  const _$_InternalApiException(this.message, this.stackTrace, this.timeStamp,
      {final String? $type})
      : $type = $type ?? 'internalServerError',
        super._();

  factory _$_InternalApiException.fromJson(Map<String, dynamic> json) =>
      _$$_InternalApiExceptionFromJson(json);

  @override
  final String? message;
  @override
  final String? stackTrace;
  @override
  final DateTime? timeStamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ApiException.internalServerError(message: $message, stackTrace: $stackTrace, timeStamp: $timeStamp)';
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

  @JsonKey(ignore: true)
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
            String? stackTrace, DateTime? timeStamp)
        defult,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        noInternet,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        format,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        timeOut,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        badRequest,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        notAuthorized,
    required TResult Function(String? message, String? response,
            String? stackTrace, DateTime? timeStamp)
        notFound,
    required TResult Function(
            String? message, String? stackTrace, DateTime? timeStamp)
        internalServerError,
  }) {
    return internalServerError(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult? Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult? Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
  }) {
    return internalServerError?.call(message, stackTrace, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? response, int? code,
            String? stackTrace, DateTime? timeStamp)?
        defult,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        noInternet,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        format,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        timeOut,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        badRequest,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        notAuthorized,
    TResult Function(String? message, String? response, String? stackTrace,
            DateTime? timeStamp)?
        notFound,
    TResult Function(String? message, String? stackTrace, DateTime? timeStamp)?
        internalServerError,
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
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InternalApiExceptionToJson(
      this,
    );
  }
}

abstract class _InternalApiException extends ApiException {
  const factory _InternalApiException(
      final String? message,
      final String? stackTrace,
      final DateTime? timeStamp) = _$_InternalApiException;
  const _InternalApiException._() : super._();

  factory _InternalApiException.fromJson(Map<String, dynamic> json) =
      _$_InternalApiException.fromJson;

  @override
  String? get message;
  @override
  String? get stackTrace;
  @override
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_InternalApiExceptionCopyWith<_$_InternalApiException> get copyWith =>
      throw _privateConstructorUsedError;
}
