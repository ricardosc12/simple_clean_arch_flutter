import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_response.dart';
import 'package:flutter_application_1/shared/domain/dto/form_schema.dart';
import 'package:flutter_application_1/shared/utils/validation.dart';
import 'package:luthor/luthor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fatura_form_dto.freezed.dart';
part 'fatura_form_dto.g.dart';

enum FaturaFields { numero, status }

abstract class FaturaSchema {
  static final Map<FaturaFields, Validator> validators = {
    FaturaFields.numero: l
        .string()
        .min(1, message: "Número obrigatório")
        .required(message: "Número obrigatório"),
    FaturaFields.status: l.string().regex(
      FormValidations.inEnum(FaturaStatus.values),
      message: "Forneça um status válido",
    ),
  };

  static FormValidation? validator(FaturaFields field) {
    return formValidator(validators[field]);
  }
}

@freezed
abstract class FaturaFormDto with _$FaturaFormDto {
  factory FaturaFormDto({
    required String numero,
    required FaturaStatus status,
  }) = _FaturaFormDto;

  factory FaturaFormDto.fromJson(Map<String, dynamic> json) =>
      _$FaturaFormDtoFromJson(json);
}
