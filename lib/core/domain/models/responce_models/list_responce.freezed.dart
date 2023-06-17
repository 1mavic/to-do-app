// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_responce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListResponce _$ListResponceFromJson(Map<String, dynamic> json) {
  return _ListResponce.fromJson(json);
}

/// @nodoc
mixin _$ListResponce {
  String? get status => throw _privateConstructorUsedError;
  List<Todo> get list => throw _privateConstructorUsedError;
  int? get revision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListResponceCopyWith<ListResponce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListResponceCopyWith<$Res> {
  factory $ListResponceCopyWith(
          ListResponce value, $Res Function(ListResponce) then) =
      _$ListResponceCopyWithImpl<$Res, ListResponce>;
  @useResult
  $Res call({String? status, List<Todo> list, int? revision});
}

/// @nodoc
class _$ListResponceCopyWithImpl<$Res, $Val extends ListResponce>
    implements $ListResponceCopyWith<$Res> {
  _$ListResponceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = null,
    Object? revision = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      revision: freezed == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListResponceCopyWith<$Res>
    implements $ListResponceCopyWith<$Res> {
  factory _$$_ListResponceCopyWith(
          _$_ListResponce value, $Res Function(_$_ListResponce) then) =
      __$$_ListResponceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, List<Todo> list, int? revision});
}

/// @nodoc
class __$$_ListResponceCopyWithImpl<$Res>
    extends _$ListResponceCopyWithImpl<$Res, _$_ListResponce>
    implements _$$_ListResponceCopyWith<$Res> {
  __$$_ListResponceCopyWithImpl(
      _$_ListResponce _value, $Res Function(_$_ListResponce) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = null,
    Object? revision = freezed,
  }) {
    return _then(_$_ListResponce(
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      freezed == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ListResponce extends _ListResponce {
  const _$_ListResponce(this.status, final List<Todo> list, this.revision)
      : _list = list,
        super._();

  factory _$_ListResponce.fromJson(Map<String, dynamic> json) =>
      _$$_ListResponceFromJson(json);

  @override
  final String? status;
  final List<Todo> _list;
  @override
  List<Todo> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final int? revision;

  @override
  String toString() {
    return 'ListResponce(status: $status, list: $list, revision: $revision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListResponce &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.revision, revision) ||
                other.revision == revision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_list), revision);

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

abstract class _ListResponce extends ListResponce {
  const factory _ListResponce(
          final String? status, final List<Todo> list, final int? revision) =
      _$_ListResponce;
  const _ListResponce._() : super._();

  factory _ListResponce.fromJson(Map<String, dynamic> json) =
      _$_ListResponce.fromJson;

  @override
  String? get status;
  @override
  List<Todo> get list;
  @override
  int? get revision;
  @override
  @JsonKey(ignore: true)
  _$$_ListResponceCopyWith<_$_ListResponce> get copyWith =>
      throw _privateConstructorUsedError;
}
