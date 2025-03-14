import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/domain/dto/doc.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/presentation/form_controller.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

enum DocFields { status, destinatario, remetente }

abstract class DocSchema {
  static final Map<DocFields, FormFieldValidator<dynamic>> validators = {
    DocFields.status: FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Selecione um status"),
      FormBuilderValidators.containsElement(
        DocStatus.values.map((e) => e.name).toList(),
      ),
      // FormBuilderValidators.transform((value) => value, validator)
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
  Future<bool> submit() async {
    try {
      final state = formKey.currentState;

      if (state == null || !state.saveAndValidate()) {
        return false;
      }

      final values = state.value;

      onSuccess(
        CreateDocDto(
          status: values[DocFields.status.name],
          destinatario: values[DocFields.destinatario.name],
          remetente: values[DocFields.remetente.name],
        ),
      );

      return true;
    } catch (e) {
      // LOG: Sistema de Log
      print(e);
      return false;
    }
  }
}
