// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_db_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalDdException {
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  DateTime? get timeStamp => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        initException,
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        readException,
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        writeException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        initException,
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        readException,
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        writeException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        initException,
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        readException,
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        writeException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitException value) initException,
    required TResult Function(_ReadException value) readException,
    required TResult Function(_WriteException value) writeException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitException value)? initException,
    TResult? Function(_ReadException value)? readException,
    TResult? Function(_WriteException value)? writeException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitException value)? initException,
    TResult Function(_ReadException value)? readException,
    TResult Function(_WriteException value)? writeException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalDdExceptionCopyWith<LocalDdException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDdExceptionCopyWith<$Res> {
  factory $LocalDdExceptionCopyWith(
          LocalDdException value, $Res Function(LocalDdException) then) =
      _$LocalDdExceptionCopyWithImpl<$Res, LocalDdException>;
  @useResult
  $Res call({StackTrace stackTrace, String? message, DateTime? timeStamp});
}

/// @nodoc
class _$LocalDdExceptionCopyWithImpl<$Res, $Val extends LocalDdException>
    implements $LocalDdExceptionCopyWith<$Res> {
  _$LocalDdExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitExceptionCopyWith<$Res>
    implements $LocalDdExceptionCopyWith<$Res> {
  factory _$$_InitExceptionCopyWith(
          _$_InitException value, $Res Function(_$_InitException) then) =
      __$$_InitExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String? message, DateTime? timeStamp});
}

/// @nodoc
class __$$_InitExceptionCopyWithImpl<$Res>
    extends _$LocalDdExceptionCopyWithImpl<$Res, _$_InitException>
    implements _$$_InitExceptionCopyWith<$Res> {
  __$$_InitExceptionCopyWithImpl(
      _$_InitException _value, $Res Function(_$_InitException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_InitException(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_InitException extends _InitException {
  const _$_InitException(
      {required this.stackTrace, this.message, this.timeStamp})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  final String? message;
  @override
  final DateTime? timeStamp;

  @override
  String toString() {
    return 'LocalDdException.initException(stackTrace: $stackTrace, message: $message, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitException &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitExceptionCopyWith<_$_InitException> get copyWith =>
      __$$_InitExceptionCopyWithImpl<_$_InitException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        initException,
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        readException,
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        writeException,
  }) {
    return initException(stackTrace, message, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        initException,
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        readException,
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        writeException,
  }) {
    return initException?.call(stackTrace, message, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        initException,
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        readException,
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        writeException,
    required TResult orElse(),
  }) {
    if (initException != null) {
      return initException(stackTrace, message, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitException value) initException,
    required TResult Function(_ReadException value) readException,
    required TResult Function(_WriteException value) writeException,
  }) {
    return initException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitException value)? initException,
    TResult? Function(_ReadException value)? readException,
    TResult? Function(_WriteException value)? writeException,
  }) {
    return initException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitException value)? initException,
    TResult Function(_ReadException value)? readException,
    TResult Function(_WriteException value)? writeException,
    required TResult orElse(),
  }) {
    if (initException != null) {
      return initException(this);
    }
    return orElse();
  }
}

abstract class _InitException extends LocalDdException {
  const factory _InitException(
      {required final StackTrace stackTrace,
      final String? message,
      final DateTime? timeStamp}) = _$_InitException;
  const _InitException._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String? get message;
  @override
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_InitExceptionCopyWith<_$_InitException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadExceptionCopyWith<$Res>
    implements $LocalDdExceptionCopyWith<$Res> {
  factory _$$_ReadExceptionCopyWith(
          _$_ReadException value, $Res Function(_$_ReadException) then) =
      __$$_ReadExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String? message, DateTime? timeStamp});
}

/// @nodoc
class __$$_ReadExceptionCopyWithImpl<$Res>
    extends _$LocalDdExceptionCopyWithImpl<$Res, _$_ReadException>
    implements _$$_ReadExceptionCopyWith<$Res> {
  __$$_ReadExceptionCopyWithImpl(
      _$_ReadException _value, $Res Function(_$_ReadException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_ReadException(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ReadException extends _ReadException {
  const _$_ReadException(
      {required this.stackTrace, this.message, this.timeStamp})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  final String? message;
  @override
  final DateTime? timeStamp;

  @override
  String toString() {
    return 'LocalDdException.readException(stackTrace: $stackTrace, message: $message, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadException &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadExceptionCopyWith<_$_ReadException> get copyWith =>
      __$$_ReadExceptionCopyWithImpl<_$_ReadException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        initException,
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        readException,
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        writeException,
  }) {
    return readException(stackTrace, message, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        initException,
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        readException,
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        writeException,
  }) {
    return readException?.call(stackTrace, message, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        initException,
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        readException,
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        writeException,
    required TResult orElse(),
  }) {
    if (readException != null) {
      return readException(stackTrace, message, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitException value) initException,
    required TResult Function(_ReadException value) readException,
    required TResult Function(_WriteException value) writeException,
  }) {
    return readException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitException value)? initException,
    TResult? Function(_ReadException value)? readException,
    TResult? Function(_WriteException value)? writeException,
  }) {
    return readException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitException value)? initException,
    TResult Function(_ReadException value)? readException,
    TResult Function(_WriteException value)? writeException,
    required TResult orElse(),
  }) {
    if (readException != null) {
      return readException(this);
    }
    return orElse();
  }
}

abstract class _ReadException extends LocalDdException {
  const factory _ReadException(
      {required final StackTrace stackTrace,
      final String? message,
      final DateTime? timeStamp}) = _$_ReadException;
  const _ReadException._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String? get message;
  @override
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_ReadExceptionCopyWith<_$_ReadException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WriteExceptionCopyWith<$Res>
    implements $LocalDdExceptionCopyWith<$Res> {
  factory _$$_WriteExceptionCopyWith(
          _$_WriteException value, $Res Function(_$_WriteException) then) =
      __$$_WriteExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String? message, DateTime? timeStamp});
}

/// @nodoc
class __$$_WriteExceptionCopyWithImpl<$Res>
    extends _$LocalDdExceptionCopyWithImpl<$Res, _$_WriteException>
    implements _$$_WriteExceptionCopyWith<$Res> {
  __$$_WriteExceptionCopyWithImpl(
      _$_WriteException _value, $Res Function(_$_WriteException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_WriteException(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_WriteException extends _WriteException {
  const _$_WriteException(
      {required this.stackTrace, this.message, this.timeStamp})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  final String? message;
  @override
  final DateTime? timeStamp;

  @override
  String toString() {
    return 'LocalDdException.writeException(stackTrace: $stackTrace, message: $message, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WriteException &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WriteExceptionCopyWith<_$_WriteException> get copyWith =>
      __$$_WriteExceptionCopyWithImpl<_$_WriteException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        initException,
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        readException,
    required TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)
        writeException,
  }) {
    return writeException(stackTrace, message, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        initException,
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        readException,
    TResult? Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        writeException,
  }) {
    return writeException?.call(stackTrace, message, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        initException,
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        readException,
    TResult Function(
            StackTrace stackTrace, String? message, DateTime? timeStamp)?
        writeException,
    required TResult orElse(),
  }) {
    if (writeException != null) {
      return writeException(stackTrace, message, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitException value) initException,
    required TResult Function(_ReadException value) readException,
    required TResult Function(_WriteException value) writeException,
  }) {
    return writeException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitException value)? initException,
    TResult? Function(_ReadException value)? readException,
    TResult? Function(_WriteException value)? writeException,
  }) {
    return writeException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitException value)? initException,
    TResult Function(_ReadException value)? readException,
    TResult Function(_WriteException value)? writeException,
    required TResult orElse(),
  }) {
    if (writeException != null) {
      return writeException(this);
    }
    return orElse();
  }
}

abstract class _WriteException extends LocalDdException {
  const factory _WriteException(
      {required final StackTrace stackTrace,
      final String? message,
      final DateTime? timeStamp}) = _$_WriteException;
  const _WriteException._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String? get message;
  @override
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_WriteExceptionCopyWith<_$_WriteException> get copyWith =>
      throw _privateConstructorUsedError;
}
