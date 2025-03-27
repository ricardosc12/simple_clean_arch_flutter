// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Doc _$DocFromJson(Map<String, dynamic> json) => _Doc(
  ar: json['ar'] as String,
  chave: json['chave'] as String,
  numero: json['numero'] as String,
  status: $enumDecode(_$DocStatusEnumMap, json['status']),
  romaneio: Romaneio.fromJson(json['romaneio'] as Map<String, dynamic>),
  destinatario: json['destinatario'] as String,
  remetente: json['remetente'] as String,
  volumes: (json['volumes'] as num?)?.toInt(),
);

Map<String, dynamic> _$DocToJson(_Doc instance) => <String, dynamic>{
  'ar': instance.ar,
  'chave': instance.chave,
  'numero': instance.numero,
  'status': _$DocStatusEnumMap[instance.status]!,
  'romaneio': instance.romaneio.toJson(),
  'destinatario': instance.destinatario,
  'remetente': instance.remetente,
  'volumes': instance.volumes,
};

const _$DocStatusEnumMap = {
  DocStatus.app: 'APP',
  DocStatus.coleta: 'COLETA',
  DocStatus.entrega: 'ENTREGA',
  DocStatus.redespacho: 'REDESPACHO',
  DocStatus.transbordo: 'TRANSBORDO',
  DocStatus.transferencia: 'TRANSFERENCIA',
};
