// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoResponce _$TodoResponceFromJson(Map<String, dynamic> json) {
  return _ListResponce.fromJson(json);
}

/// @nodoc
mixin _$TodoResponce {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'element')
  Todo get todo => throw _privateConstructorUsedError;
  int? get revision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoResponceCopyWith<TodoResponce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoResponceCopyWith<$Res> {
  factory $TodoResponceCopyWith(
          TodoResponce value, $Res Function(TodoResponce) then) =
      _$TodoResponceCopyWithImpl<$Res, TodoResponce>;
  @useResult
  $Res call(
      {String? status, @JsonKey(name: 'element') Todo todo, int? revision});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoResponceCopyWithImpl<$Res, $Val extends TodoResponce>
    implements $TodoResponceCopyWith<$Res> {
  _$TodoResponceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? todo = null,
    Object? revision = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      revision: freezed == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ListResponceCopyWith<$Res>
    implements $TodoResponceCopyWith<$Res> {
  factory _$$_ListResponceCopyWith(
          _$_ListResponce value, $Res Function(_$_ListResponce) then) =
      __$$_ListResponceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status, @JsonKey(name: 'element') Todo todo, int? revision});

  @override
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$_ListResponceCopyWithImpl<$Res>
    extends _$TodoResponceCopyWithImpl<$Res, _$_ListResponce>
    implements _$$_ListResponceCopyWith<$Res> {
  __$$_ListResponceCopyWithImpl(
      _$_ListResponce _value, $Res Function(_$_ListResponce) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? todo = null,
    Object? revision = freezed,
  }) {
    return _then(_$_ListResponce(
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      freezed == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListResponce extends _ListResponce {
  const _$_ListResponce(
      this.status, @JsonKey(name: 'element') this.todo, this.revision)
      : super._();

  factory _$_ListResponce.fromJson(Map<String, dynamic> json) =>
      _$$_ListResponceFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(name: 'element')
  final Todo todo;
  @override
  final int? revision;

  @override
  String toString() {
    return 'TodoResponce(status: $status, todo: $todo, revision: $revision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListResponce &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.revision, revision) ||
                other.revision == revision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, todo, revision);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListResponceCopyWith<_$_ListResponce> get copyWith =>
      __$$_ListResponceCopyWithImpl<_$_ListResponce>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListResponceToJson(
      this,
    );
  }
}

abstract class _ListResponce extends TodoResponce {
  const factory _ListResponce(
      final String? status,
      @JsonKey(name: 'element') final Todo todo,
      final int? revision) = _$_ListResponce;
  const _ListResponce._() : super._();

  factory _ListResponce.fromJson(Map<String, dynamic> json) =
      _$_ListResponce.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: 'element')
  Todo get todo;
  @override
  int? get revision;
  @override
  @JsonKey(ignore: true)
  _$$_ListResponceCopyWith<_$_ListResponce> get copyWith =>
      throw _privateConstructorUsedError;
}
