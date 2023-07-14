// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unexpected_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnexpectedException {
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  DateTime? get timeStamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnexpectedExceptionCopyWith<UnexpectedException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnexpectedExceptionCopyWith<$Res> {
  factory $UnexpectedExceptionCopyWith(
          UnexpectedException value, $Res Function(UnexpectedException) then) =
      _$UnexpectedExceptionCopyWithImpl<$Res, UnexpectedException>;
  @useResult
  $Res call({StackTrace? stackTrace, DateTime? timeStamp});
}

/// @nodoc
class _$UnexpectedExceptionCopyWithImpl<$Res, $Val extends UnexpectedException>
    implements $UnexpectedExceptionCopyWith<$Res> {
  _$UnexpectedExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnexpectedExceptionCopyWith<$Res>
    implements $UnexpectedExceptionCopyWith<$Res> {
  factory _$$_UnexpectedExceptionCopyWith(_$_UnexpectedException value,
          $Res Function(_$_UnexpectedException) then) =
      __$$_UnexpectedExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace? stackTrace, DateTime? timeStamp});
}

/// @nodoc
class __$$_UnexpectedExceptionCopyWithImpl<$Res>
    extends _$UnexpectedExceptionCopyWithImpl<$Res, _$_UnexpectedException>
    implements _$$_UnexpectedExceptionCopyWith<$Res> {
  __$$_UnexpectedExceptionCopyWithImpl(_$_UnexpectedException _value,
      $Res Function(_$_UnexpectedException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_UnexpectedException(
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_UnexpectedException extends _UnexpectedException {
  const _$_UnexpectedException({this.stackTrace, this.timeStamp}) : super._();

  @override
  final StackTrace? stackTrace;
  @override
  final DateTime? timeStamp;

  @override
  String toString() {
    return 'UnexpectedException(stackTrace: $stackTrace, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnexpectedException &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnexpectedExceptionCopyWith<_$_UnexpectedException> get copyWith =>
      __$$_UnexpectedExceptionCopyWithImpl<_$_UnexpectedException>(
          this, _$identity);
}

abstract class _UnexpectedException extends UnexpectedException {
  const factory _UnexpectedException(
      {final StackTrace? stackTrace,
      final DateTime? timeStamp}) = _$_UnexpectedException;
  const _UnexpectedException._() : super._();

  @override
  StackTrace? get stackTrace;
  @override
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_UnexpectedExceptionCopyWith<_$_UnexpectedException> get copyWith =>
      throw _privateConstructorUsedError;
}
