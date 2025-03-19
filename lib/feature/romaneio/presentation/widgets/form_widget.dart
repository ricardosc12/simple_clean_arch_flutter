import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/romaneio/providers/docs_provider.dart';
import 'package:flutter_application_1/feature/romaneio/providers/form_controller.dart';
import 'package:flutter_application_1/shared/domain/dto/doc.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/presentation/form_controller.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            items:
                DocStatus.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.itemValue,
                        child: Text(e.itemLabel),
                      ),
                    )
                    .toList(),
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

final formDocProvider = Provider.family<DocFormController, String?>((ref, ar) {
  final docs = ref.watch(docsProvider.notifier);

  return DocFormController(
    onSuccess:
        (doc) =>
            ar != null ? docs.editDoc(ar: ar, doc: doc) : docs.addDoc(doc: doc),
  );
}, dependencies: docsProvider.allTransitiveDependencies);
