// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unexpected_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnexpectedException _$$_UnexpectedExceptionFromJson(
        Map<String, dynamic> json) =>
    _$_UnexpectedException(
      stackTrace: json['stackTrace'] as String?,
      timeStamp: json['timeStamp'] == null
          ? null
          : DateTime.parse(json['timeStamp'] as String),
    );

Map<String, dynamic> _$$_UnexpectedExceptionToJson(
        _$_UnexpectedException instance) =>
    <String, dynamic>{
      'stackTrace': instance.stackTrace,
      'timeStamp': instance.timeStamp?.toIso8601String(),
    };
