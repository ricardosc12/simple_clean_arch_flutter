import 'package:flutter_application_1/shared/domain/models/romaneio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc.g.dart';

enum DocStatus { app, coleta, entrega, redespacho, transbordo, transferencia }

@JsonSerializable()
class Doc {
  final String ar;
  final String chave;
  final String numero;
  final DocStatus status;
  final Romaneio romaneio;
  final String destinatario;
  final String remetente;
  final int? volumes;

  Doc({
    required this.ar,
    required this.chave,
    required this.numero,
    required this.status,
    required this.romaneio,
    required this.destinatario,
    required this.remetente,
    this.volumes,
  });

  factory Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);

  Map<String, dynamic> toJson() => _$DocToJson(this);
}
