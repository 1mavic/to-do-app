// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoAdapter extends TypeAdapter<_$_Todo> {
  @override
  final int typeId = 1;

  @override
  _$_Todo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Todo(
      id: fields[0] as int?,
      text: fields[1] as String,
      priority: fields[2] as Priority,
      deadline: fields[3] as DateTime?,
      done: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Todo obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.priority)
      ..writeByte(3)
      ..write(obj.deadline)
      ..writeByte(4)
      ..write(obj.done);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      id: json['id'] as int?,
      text: json['text'] as String? ?? '',
      priority: $enumDecodeNullable(_$PriorityEnumMap, json['priority']) ??
          Priority.no,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      done: json['done'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'priority': _$PriorityEnumMap[instance.priority]!,
      'deadline': instance.deadline?.toIso8601String(),
      'done': instance.done,
    };

const _$PriorityEnumMap = {
  Priority.no: 'no',
  Priority.low: 'low',
  Priority.hight: 'hight',
};
