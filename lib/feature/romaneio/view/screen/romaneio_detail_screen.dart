import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/romaneio/view/widgets/form_widget.dart';
import 'package:flutter_application_1/feature/romaneio/providers/form_controller.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/domain/dto/doc.dart';
import 'package:flutter_application_1/shared/domain/models/doc_model.dart';
import 'package:flutter_application_1/shared/view/form_controller.dart';
import 'package:flutter_application_1/shared/view/layout/app_bar.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class RomaneioDetailScreen extends ConsumerWidget {
  final Doc? doc;

  const RomaneioDetailScreen({super.key, this.doc});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final doc = this.doc;
    return Paper(
      child: DocForm(
        form: ref.watch(formDocProvider(doc?.ar)),
        onFinalize: (status) {
          if (status == FormStatus.submitted) {
            ref.read(routeProvider).navigate(const RomaneioListRoute());
          }
        },
        initialState:
            doc != null
                ? CreateDocDto(
                  status: doc.status,
                  destinatario: doc.destinatario,
                  remetente: doc.remetente,
                )
                : null,
      ),
    );
  }
}
