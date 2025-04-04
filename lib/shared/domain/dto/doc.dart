import 'package:flutter_application_1/shared/domain/models/doc_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc.freezed.dart';
part 'doc.g.dart';

@freezed
abstract class CreateDocDto with _$CreateDocDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CreateDocDto({
    required DocTesteStatus status,
    required String destinatario,
    required String remetente,
  }) = _CreateDocDto;

  factory CreateDocDto.fromJson(Map<String, dynamic> json) =>
      _$CreateDocDtoFromJson(json);
}
