// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DefaultApiException _$$_DefaultApiExceptionFromJson(
        Map<String, dynamic> json) =>
    _$_DefaultApiException(
      json['message'] as String?,
      json['response'] as String?,
      json['code'] as int?,
      json['stackTrace'] as String?,
      json['timeStamp'] == null
          ? null
          : DateTime.parse(json['timeStamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DefaultApiExceptionToJson(
        _$_DefaultApiException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'response': instance.response,
      'code': instance.code,
      'stackTrace': instance.stackTrace,
      'timeStamp': instance.timeStamp?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$_NoInternetApiException _$$_NoInternetApiExceptionFromJson(
        Map<String, dynamic> json) =>
    _$_NoInternetApiException(
      json['message'] as String?,
      json['stackTrace'] as String?,
      json['timeStamp'] == null
          ? null
          : DateTime.parse(json['timeStamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_NoInternetApiExceptionToJson(
        _$_NoInternetApiException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'stackTrace': instance.stackTrace,
      'timeStamp': instance.timeStamp?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$_FormatApiException _$$_FormatApiExceptionFromJson(
        Map<String, dynamic> json) =>
    _$_FormatApiException(
      json['message'] as String?,
      json['stackTrace'] as String?,
      json['timeStamp'] == null
          ? null
          : DateTime.parse(json['timeStamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FormatApiExceptionToJson(
        _$_FormatApiException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'stackTrace': instance.stackTrace,
      'timeStamp': instance.timeStamp?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$_TimeOutApiException _$$_TimeOutApiExceptionFromJson(
        Map<String, dynamic> json) =>
    _$_TimeOutApiException(
      json['message'] as String?,
      json['stackTrace'] as String?,
      json['timeStamp'] == null
          ? null
          : DateTime.parse(json['timeStamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TimeOutApiExceptionToJson(
        _$_TimeOutApiException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'stackTrace': instance.stackTrace,
      'timeStamp': instance.timeStamp?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$_BarRequestApiException _$$_BarRequestApiExceptionFromJson(
        Map<String, dynamic> json) =>
    _$_BarRequestApiException(
      json['message'] as String?,
      json['response'] as String?,
      json['stackTrace'] as String?,
      json['timeStamp'] == null
          ? null
          : DateTime.parse(json['timeStamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_BarRequestApiExceptionToJson(
        _$_BarRequestApiException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'response': instance.response,
      'stackTrace': instance.stackTrace,
      'timeStamp': instance.timeStamp?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$_AuthApiException _$$_AuthApiExceptionFromJson(Map<String, dynamic> json) =>
    _$_AuthApiException(
      json['message'] as String?,
      json['stackTrace'] as String?,
      json['timeStamp'] == null
          ? null
          : DateTime.parse(json['timeStamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthApiExceptionToJson(_$_AuthApiException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'stackTrace': instance.stackTrace,
      'timeStamp': instance.timeStamp?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$_NotFoundApiException _$$_NotFoundApiExceptionFromJson(
        Map<String, dynamic> json) =>
    _$_NotFoundApiException(
      json['message'] as String?,
      json['response'] as String?,
      json['stackTrace'] as String?,
      json['timeStamp'] == null
          ? null
          : DateTime.parse(json['timeStamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_NotFoundApiExceptionToJson(
        _$_NotFoundApiException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'response': instance.response,
      'stackTrace': instance.stackTrace,
      'timeStamp': instance.timeStamp?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$_InternalApiException _$$_InternalApiExceptionFromJson(
        Map<String, dynamic> json) =>
    _$_InternalApiException(
      json['message'] as String?,
      json['stackTrace'] as String?,
      json['timeStamp'] == null
          ? null
          : DateTime.parse(json['timeStamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_InternalApiExceptionToJson(
        _$_InternalApiException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'stackTrace': instance.stackTrace,
      'timeStamp': instance.timeStamp?.toIso8601String(),
      'runtimeType': instance.$type,
    };
