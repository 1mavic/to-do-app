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

Map<String, dynamic> _$$_ListResponceToJson(_$_ListResponce instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  val['list'] = instance.list;
  writeNotNull('revision', instance.revision);
  return val;
}
