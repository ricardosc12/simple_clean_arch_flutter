import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/incidente/providers/incidente_provider.dart';
import 'package:flutter_application_1/shared/domain/models/incidente.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/domain/dto/incidente.dart';
import '../../../../shared/presentation/form_controller.dart';
import '../../providers/form_controller.dart';

class IncidenteForm extends StatelessWidget {
  final FormController form;
  final CreateIncidenteDto? initialState;
  final void Function()? onFinalize;

  const IncidenteForm({
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
        children: [
          FormBuilderDropdown(
            items:
                IncidenteSituacao.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.itemValue,
                        child: Text(e.itemLabel),
                      ),
                    )
                    .toList(),
            name: IncidenteFields.situacao.name,
            decoration: const InputDecoration(labelText: "Situação"),
            validator: IncidenteSchema.validator(IncidenteFields.situacao),
          ),
          FormBuilderTextField(
            name: IncidenteFields.nomeRelator.name,
            decoration: const InputDecoration(labelText: "Nome do relator"),
            validator: IncidenteSchema.validator(IncidenteFields.nomeRelator),
          ),
          FormBuilderTextField(
            name: IncidenteFields.email.name,
            decoration: const InputDecoration(labelText: "Email"),
            validator: IncidenteSchema.validator(IncidenteFields.email),
          ),
          FormBuilderTextField(
            name: IncidenteFields.telefone.name,
            decoration: const InputDecoration(labelText: "Telefone"),
            validator: IncidenteSchema.validator(IncidenteFields.telefone),
          ),
          FormBuilderTextField(
            name: IncidenteFields.resumo.name,
            decoration: const InputDecoration(labelText: "Resumo do incidente"),
            validator: IncidenteSchema.validator(IncidenteFields.resumo),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  form.reset();
                },
                child: const Text("Clear"),
              ),
              ElevatedButton(
                onPressed: () {
                  form.submit().then((value) {
                    if (value) {
                      onFinalize?.call();
                      context.router.pop();
                    }
                  });
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

final formIncidenteProvider = Provider.family<IncidenteFormController, String?>(
  (ref, id) {
    final incidenteNotifier = ref.watch(incidentesProvider.notifier);

    return IncidenteFormController(
      ref: ref,
      onSuccess: (incidente) {
        if (id != null) {
          incidenteNotifier.editIncidente(id: id, incidente: incidente);
        } else {
          incidenteNotifier.addIncidente(incidente: incidente);
        }
      },
    );
  },
  dependencies: incidentesProvider.allTransitiveDependencies,
);
