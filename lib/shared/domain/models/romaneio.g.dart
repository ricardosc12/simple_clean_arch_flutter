// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'romaneio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Romaneio _$RomaneioFromJson(Map<String, dynamic> json) => Romaneio(
  cod: json['cod'] as String,
  numero: json['numero'] as String,
  grupoEmp: json['grupoEmp'] as String,
  tipo: $enumDecode(_$RomaneioTipoEnumMap, json['tipo']),
);

Map<String, dynamic> _$RomaneioToJson(Romaneio instance) => <String, dynamic>{
  'cod': instance.cod,
  'numero': instance.numero,
  'grupoEmp': instance.grupoEmp,
  'tipo': _$RomaneioTipoEnumMap[instance.tipo]!,
};

const _$RomaneioTipoEnumMap = {
  RomaneioTipo.app: 'app',
  RomaneioTipo.coleta: 'coleta',
  RomaneioTipo.entrega: 'entrega',
  RomaneioTipo.redespacho: 'redespacho',
  RomaneioTipo.transbordo: 'transbordo',
  RomaneioTipo.transferencia: 'transferencia',
};
