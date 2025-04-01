import 'package:freezed_annotation/freezed_annotation.dart';

part 'romaneio_model.g.dart';

enum RomaneioTipo {
  app,
  coleta,
  entrega,
  redespacho,
  transbordo,
  transferencia,
}

@JsonSerializable()
class Romaneio {
  final String cod;
  final String numero;
  final String grupoEmp;
  final RomaneioTipo tipo;

  Romaneio({
    required this.cod,
    required this.numero,
    required this.grupoEmp,
    required this.tipo,
  });

  factory Romaneio.fromJson(Map<String, dynamic> json) =>
      _$RomaneioFromJson(json);

  Map<String, dynamic> toJson() => _$RomaneioToJson(this);
}
