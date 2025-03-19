import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/domain/dto/doc.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:flutter_application_1/shared/presentation/form_controller.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

enum DocFields { status, destinatario, remetente }

abstract class DocSchema {
  static final Map<DocFields, FormFieldValidator<dynamic>> validators = {
    DocFields.status: FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Selecione um status"),
      FormBuilderValidators.containsElement(
        DocStatus.values.map((e) => e.itemValue).toList(),
      ),
    ]),
    DocFields.destinatario: FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Destinatário obrigatória"),
    ]),
    DocFields.remetente: FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Remetente obrigatória"),
    ]),
  };

  static FormFieldValidator<dynamic>? validator(DocFields field) {
    return validators[field];
  }
}

class DocFormController extends FormController<CreateDocDto> {
  DocFormController({required super.onSuccess});

  @override
  Future<FormStatus> submit() async {
    try {
      final state = formKey.currentState;

      if (state == null || !state.saveAndValidate()) {
        return FormStatus.invalid;
      }

      final values = state.value;

      onSuccess(
        CreateDocDto(
          status: DocStatus.values.byName(
            values[DocFields.status.name].toString().toLowerCase(),
          ),
          destinatario: values[DocFields.destinatario.name],
          remetente: values[DocFields.remetente.name],
        ),
      );

      return FormStatus.submitted;
    } catch (e) {
      LogService.logger.error(e);
      return FormStatus.error;
    }
  }
}
