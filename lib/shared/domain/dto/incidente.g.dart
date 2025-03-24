// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incidente.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IncidenteFormDto _$IncidenteFormDtoFromJson(Map<String, dynamic> json) =>
    _IncidenteFormDto(
      arg1: json['arg1'] as String,
      arg2: (json['arg2'] as num).toInt(),
      arg3: DateTime.parse(json['arg3'] as String),
    );

Map<String, dynamic> _$IncidenteFormDtoToJson(_IncidenteFormDto instance) =>
    <String, dynamic>{
      'arg1': instance.arg1,
      'arg2': instance.arg2,
      'arg3': instance.arg3.toIso8601String(),
    };
