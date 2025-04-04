import 'package:flutter_application_1/shared/domain/models/romaneio_model.dart';
import 'package:flutter_application_1/shared/utils/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc_model.freezed.dart';
part 'doc_model.g.dart';

@JsonEnum(alwaysCreate: true)
enum DocStatus with EnumUpperStatus {
  @JsonValue("APP")
  app("App"),
  @JsonValue("COLETA")
  coleta("Coleta"),
  @JsonValue("ENTREGA")
  entrega("Entrega"),
  @JsonValue("REDESPACHO")
  redespacho("Redespacho"),
  @JsonValue("TRANSBORDO")
  transbordo("Transbordo"),
  @JsonValue("TRANSFERENCIA")
  transferencia("Transferência");

  const DocStatus(this.itemLabel);

  @override
  final String itemLabel;

  @override
  String toJson() => _$DocTesteStatusEnumMap[this] ?? name.toUpperCase();
}

@JsonEnum(alwaysCreate: true)
enum DocTesteStatus with EnumUpperStatus {
  @JsonValue("APP")
  app("App"),
  @JsonValue("COLETA")
  coleta("Coleta"),
  @JsonValue("ENTREGA")
  entrega("Entrega"),
  @JsonValue("REDESPACHO")
  redespacho("Redespacho"),
  @JsonValue("TRANSBORDO")
  transbordo("Transbordo"),
  @JsonValue("TRANSFERENCIA")
  transferencia("Transferência");

  const DocTesteStatus(this.itemLabel);

  @override
  final String itemLabel;

  @override
  String toJson() => _$DocTesteStatusEnumMap[this] ?? name.toUpperCase();
}

@freezed
abstract class DocTeste with _$DocTeste {
  const factory DocTeste({
    required String ar,
    required String chave,
    required String numero,
    required DocTesteStatus status,
    required Romaneio romaneio,
    required String destinatario,
    required String remetente,
    int? volumes,
  }) = _DocTeste;

  factory DocTeste.fromJson(Map<String, dynamic> json) => _$DocTesteFromJson(json);
}
