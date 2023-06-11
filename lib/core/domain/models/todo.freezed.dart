// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
mixin _$Todo {
  /// id property. if null to do is not saved
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get text => throw _privateConstructorUsedError;
  @HiveField(2)
  Priority get priority => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime? get deadline => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String text,
      @HiveField(2) Priority priority,
      @HiveField(3) DateTime? deadline,
      @HiveField(4) bool done});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res, $Val extends Todo>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = null,
    Object? priority = null,
    Object? deadline = freezed,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$_TodoCopyWith(_$_Todo value, $Res Function(_$_Todo) then) =
      __$$_TodoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String text,
      @HiveField(2) Priority priority,
      @HiveField(3) DateTime? deadline,
      @HiveField(4) bool done});
}

/// @nodoc
class __$$_TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res, _$_Todo>
    implements _$$_TodoCopyWith<$Res> {
  __$$_TodoCopyWithImpl(_$_Todo _value, $Res Function(_$_Todo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = null,
    Object? priority = null,
    Object? deadline = freezed,
    Object? done = null,
  }) {
    return _then(_$_Todo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_Todo extends _Todo {
  _$_Todo(
      {@HiveField(0) this.id,
      @HiveField(1) this.text = '',
      @HiveField(2) this.priority = Priority.no,
      @HiveField(3) this.deadline,
      @HiveField(4) this.done = false})
      : super._();

  factory _$_Todo.fromJson(Map<String, dynamic> json) => _$$_TodoFromJson(json);

  /// id property. if null to do is not saved
  @override
  @HiveField(0)
  final int? id;
  @override
  @JsonKey()
  @HiveField(1)
  final String text;
  @override
  @JsonKey()
  @HiveField(2)
  final Priority priority;
  @override
  @HiveField(3)
  final DateTime? deadline;
  @override
  @JsonKey()
  @HiveField(4)
  final bool done;

  @override
  String toString() {
    return 'Todo(id: $id, text: $text, priority: $priority, deadline: $deadline, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Todo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, text, priority, deadline, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoCopyWith<_$_Todo> get copyWith =>
      __$$_TodoCopyWithImpl<_$_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoToJson(
      this,
    );
  }
}

abstract class _Todo extends Todo {
  factory _Todo(
      {@HiveField(0) final int? id,
      @HiveField(1) final String text,
      @HiveField(2) final Priority priority,
      @HiveField(3) final DateTime? deadline,
      @HiveField(4) final bool done}) = _$_Todo;
  _Todo._() : super._();

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override

  /// id property. if null to do is not saved
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String get text;
  @override
  @HiveField(2)
  Priority get priority;
  @override
  @HiveField(3)
  DateTime? get deadline;
  @override
  @HiveField(4)
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$$_TodoCopyWith<_$_Todo> get copyWith => throw _privateConstructorUsedError;
}
