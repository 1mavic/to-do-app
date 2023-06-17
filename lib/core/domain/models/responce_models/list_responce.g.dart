// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListResponce _$$_ListResponceFromJson(Map<String, dynamic> json) =>
    _$_ListResponce(
      json['status'] as String?,
      (json['list'] as List<dynamic>)
          .map((e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['revision'] as int?,
    );

Map<String, dynamic> _$$_ListResponceToJson(_$_ListResponce instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list.map((e) => e.toJson()).toList(),
      'revision': instance.revision,
    };
