// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDocDto _$CreateDocDtoFromJson(Map<String, dynamic> json) =>
    _CreateDocDto(
      status: $enumDecode(_$DocStatusEnumMap, json['status']),
      destinatario: json['destinatario'] as String,
      remetente: json['remetente'] as String,
    );

Map<String, dynamic> _$CreateDocDtoToJson(_CreateDocDto instance) =>
    <String, dynamic>{
      'status': _$DocStatusEnumMap[instance.status]!,
      'destinatario': instance.destinatario,
      'remetente': instance.remetente,
    };

const _$DocStatusEnumMap = {
  DocStatus.app: 'APP',
  DocStatus.coleta: 'COLETA',
  DocStatus.entrega: 'ENTREGA',
  DocStatus.redespacho: 'REDESPACHO',
  DocStatus.transbordo: 'TRANSBORDO',
  DocStatus.transferencia: 'TRANSFERENCIA',
};
