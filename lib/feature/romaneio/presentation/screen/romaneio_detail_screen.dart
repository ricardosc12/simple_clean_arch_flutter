import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/romaneio/presentation/widgets/form_widget.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/domain/dto/doc.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/presentation/layout/app_bar.dart';
import 'package:flutter_application_1/shared/presentation/layout/paper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class RomaneioDetailScreen extends ConsumerWidget {
  final Doc doc;

  const RomaneioDetailScreen({super.key, required this.doc});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: DefaultAppBar(),
      // body: const Text("asd"),
      body: Paper(
        child: DocForm(
          form: ref.watch(formDocProvider(doc.ar)),
          onFinalize:
              () => ref.read(routeProvider).navigate(const RomaneioListRoute()),
          initialState: CreateDocDto(
            status: doc.status,
            destinatario: doc.destinatario,
            remetente: doc.remetente,
          ),
        ),
      ),
    );
  }
}
