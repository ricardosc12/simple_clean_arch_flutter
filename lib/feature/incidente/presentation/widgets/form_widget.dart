import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/incidente/providers/incidente_provider.dart';
import 'package:flutter_application_1/shared/domain/models/incidente_model.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/domain/dto/incidente.dart';
import '../../../../shared/view/form_controller.dart';
import '../../../../shared/view/layout/mask_text_input.dart';
import '../../../../shared/view/layout/toast.dart';
import '../../providers/form_controller.dart';
import 'package:intl/intl.dart';

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
            inputFormatters: [maskFormatter],
          ),
          FormBuilderTextField(
            name: IncidenteFields.resumo.name,
            decoration: const InputDecoration(
              labelText: "Resumo do incidente",
            ),
            validator: IncidenteSchema.validator(IncidenteFields.resumo),
            maxLines: 3,
            keyboardType: TextInputType.multiline,
          ),

          FormBuilderDateTimePicker(
            name: IncidenteFields.data.name,
            decoration: const InputDecoration(labelText: "Data do incidente"),
            format: DateFormat("dd/MM/yyyy"),
            inputType: InputType.date,
            firstDate: DateTime.now().subtract(const Duration(days: 7)),
            lastDate: DateTime.now(),
            initialValue: initialState?.data is String
                ? DateTime.tryParse(initialState!.data as String)
                : initialState?.data,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  form.reset();
                  ToastHelper.info("Informações apagadas");
                },
                child: const Text("Clear"),
              ),
              ElevatedButton(
                onPressed: () {
                  form.submit().then((value) {
                    if (value == FormStatus.success) {
                      onFinalize?.call();
                      context.router.pop();
                      ToastHelper.success("Incidente criado com sucesso");
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
