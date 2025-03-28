import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/romaneio/providers/form_controller.dart';
import 'package:flutter_application_1/shared/domain/dto/doc.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/view/form_controller.dart';
import 'package:flutter_application_1/shared/utils/form.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DocForm extends StatelessWidget {
  final FormController form;
  final CreateDocDto? initialState;
  final void Function(FormStatus status)? onFinalize;

  const DocForm({
    super.key,
    required this.form,
    this.initialState,
    this.onFinalize,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      initialValue: initialState?.toJson() ?? {},
      key: form.formKey,
      child: Column(
        spacing: 10,
        children: [
          FormBuilderDropdown(
            items: FormExtensions.toDropdownItems(DocStatus.values),
            name: DocFields.status.name,
            decoration: const InputDecoration(labelText: "Status"),
            validator: DocSchema.validator(DocFields.status),
          ),
          FormBuilderTextField(
            name: DocFields.destinatario.name,
            decoration: const InputDecoration(labelText: "Destinatário"),
            validator: DocSchema.validator(DocFields.destinatario),
          ),
          FormBuilderTextField(
            name: DocFields.remetente.name,
            decoration: const InputDecoration(labelText: "Remetente"),
            validator: DocSchema.validator(DocFields.remetente),
          ),
          Row(
            spacing: 14,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  form.reset();
                },
                child: Text("Clear"),
              ),
              ElevatedButton(
                onPressed: () {
                  form.submit().then((value) => onFinalize?.call(value));
                },
                child:
                    initialState != null
                        ? const Text("Editar")
                        : const Text("Criar"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
