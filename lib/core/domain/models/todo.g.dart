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
      id: fields[0] as String?,
      text: fields[1] as String,
      priority: fields[2] as Priority,
      deadline: fields[3] as int?,
      done: fields[4] as bool,
      createdAt: fields[5] as int?,
      changedAt: fields[6] as int?,
      updatedBy: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Todo obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.priority)
      ..writeByte(3)
      ..write(obj.deadline)
      ..writeByte(4)
      ..write(obj.done)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.changedAt)
      ..writeByte(7)
      ..write(obj.updatedBy);
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
      id: json['id'] as String?,
      text: json['text'] as String? ?? '',
      priority: $enumDecodeNullable(_$PriorityEnumMap, json['importance']) ??
          Priority.basic,
      deadline: json['deadline'] as int?,
      done: json['done'] as bool? ?? false,
      createdAt: json['created_at'] as int?,
      changedAt: json['changed_at'] as int?,
      updatedBy: json['last_updated_by'] as String? ?? 'local_user',
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'importance': _$PriorityEnumMap[instance.priority]!,
      'deadline': instance.deadline,
      'done': instance.done,
      'created_at': instance.createdAt,
      'changed_at': instance.changedAt,
      'last_updated_by': instance.updatedBy,
    };

const _$PriorityEnumMap = {
  Priority.basic: 'basic',
  Priority.low: 'low',
  Priority.important: 'important',
};
