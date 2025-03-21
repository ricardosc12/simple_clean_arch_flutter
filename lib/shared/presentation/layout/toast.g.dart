// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ToastInformation _$ToastInformationFromJson(Map<String, dynamic> json) =>
    _ToastInformation(
      toastType: $enumDecode(_$ToastTypeEnumMap, json['toastType']),
      message: json['message'] as String,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ToastInformationToJson(_ToastInformation instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'toastType': _$ToastTypeEnumMap[instance.toastType]!,
      'message': instance.message,
      'id': instance.id,
    };

const _$ToastTypeEnumMap = {
  ToastType.sucess: 'sucess',
  ToastType.info: 'info',
  ToastType.warn: 'warn',
  ToastType.error: 'error',
};
