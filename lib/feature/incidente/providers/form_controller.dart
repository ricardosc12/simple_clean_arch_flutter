import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/shared/domain/dto/incidente.dart';
import 'package:flutter_application_1/shared/domain/models/incidente.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../../shared/presentation/form_controller.dart';

enum IncidenteFields { situacao, nomeRelator, email, telefone, resumo, data }

abstract class IncidenteSchema {
  static final Map<IncidenteFields, FormFieldValidator<String>> validators = {
    IncidenteFields.situacao: FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Selecione uma situação"),
      FormBuilderValidators.containsElement(
        IncidenteSituacao.values.map((e) => e.itemValue).toList(),
      ),
    ]),
    IncidenteFields.nomeRelator: FormBuilderValidators.required(
      errorText: "Nome do relator obrigatório",
    ),
    IncidenteFields.telefone: FormBuilderValidators.required(
      errorText: "Telefone obrigatório",
    ),

    IncidenteFields.resumo: FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Resumo obrigatório"),
      FormBuilderValidators.minLength(
        10,
        errorText: "O resumo deve ter pelo menos 10 caracteres",
      ),
    ]),
    IncidenteFields.email: FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Email obrigatório"),
      FormBuilderValidators.email(errorText: "Email inválido"),
    ]),
  };

  static FormFieldValidator<String>? validator(IncidenteFields field) =>
      validators[field];
}

class IncidenteFormController extends FormController<CreateIncidenteDto> {
  final Ref ref;

  IncidenteFormController({required super.onSuccess, required this.ref});

  @override
  Future<FormStatus> submit() async {
    final state = formKey.currentState;
    if (state == null || !state.saveAndValidate()) {
      return FormStatus.failure;
    }
    final values = state.value;

    onSuccess(
      CreateIncidenteDto(
        situacao: IncidenteSituacao.values.byName(
          values[IncidenteFields.situacao.name]?.toString().toLowerCase() ?? "",
        ),
        nomeRelator: values[IncidenteFields.nomeRelator.name] ?? "",
        email: values[IncidenteFields.email.name] ?? "",
        telefone: values[IncidenteFields.telefone.name] ?? "",
        resumo: values[IncidenteFields.resumo.name] ?? "",
        data: values[IncidenteFields.data.name] ?? "",

      ),
    );

    return FormStatus.success;
  }
}
