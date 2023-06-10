// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

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
