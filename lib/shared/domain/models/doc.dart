import 'package:flutter_application_1/shared/domain/models/romaneio.dart';
import 'package:flutter_application_1/shared/utils/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc.freezed.dart';
part 'doc.g.dart';

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
  String toJson() => _$DocStatusEnumMap[this] ?? name.toUpperCase();
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
