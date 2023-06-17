// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListResponce _$$_ListResponceFromJson(Map<String, dynamic> json) =>
    _$_ListResponce(
      json['status'] as String?,
      Todo.fromJson(json['element'] as Map<String, dynamic>),
      json['revision'] as int?,
    );

Map<String, dynamic> _$$_ListResponceToJson(_$_ListResponce instance) =>
    <String, dynamic>{
      'status': instance.status,
      'element': instance.todo.toJson(),
      'revision': instance.revision,
    };
