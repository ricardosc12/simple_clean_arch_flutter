import 'package:flutter_application_1/shared/domain/models/romaneio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc.freezed.dart';
part 'doc.g.dart';

@JsonEnum()
enum DocStatus {
  @JsonValue("APP")
  app,
  @JsonValue("COLETA")
  coleta,
  @JsonValue("ENTREGA")
  entrega,
  @JsonValue("REDESPACHO")
  redespacho,
  @JsonValue("TRANSBORDO")
  transbordo,
  @JsonValue("TRANSFERENCIA")
  transferencia,
}

@freezed
abstract class Doc with _$Doc {
  const factory Doc({
    required String ar,
    required String chave,
    required String numero,
    required DocStatus status,
    required Romaneio romaneio,
    required String destinatario,
    required String remetente,
    int? volumes,
  }) = _Doc;

  factory Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);
}
