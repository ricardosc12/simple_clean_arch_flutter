// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppException _$AppExceptionFromJson(Map<String, dynamic> json) =>
    _AppException(
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$AppExceptionToJson(_AppException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'id': instance.id,
    };
