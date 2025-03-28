import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/financeiro/controllers/fatura_form_controller.dart';
import 'package:flutter_application_1/feature/financeiro/dto/fatura_form_dto.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_response.dart';
import 'package:flutter_application_1/shared/view/layout/app_bar.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';
import 'package:flutter_application_1/shared/utils/form.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class FaturaDetailPage extends ConsumerWidget {
  final Fatura fatura;
  const FaturaDetailPage({super.key, required this.fatura});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Paper(
        child: FormBuilder(
          key: ref.watch(formFaturaProvider).formKey,
          initialValue: fatura.toJson(),
          child: Column(
            children: [
              FormBuilderTextField(
                name: FaturaFields.numero.name,
                enabled: false,
                validator: FaturaSchema.validator(FaturaFields.numero),
              ),
              FormBuilderDropdown(
                items: FormExtensions.toDropdownItems(FaturaStatus.values),
                name: FaturaFields.status.name,
                validator: FaturaSchema.validator(FaturaFields.status),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ref.read(formFaturaProvider).submit();
                    },
                    child: const Text("Editar"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
