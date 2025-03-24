import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../routes/app.dart';
import '../../../../shared/domain/dto/incidente.dart';
import '../../../../shared/domain/models/incidente.dart';
import '../../../../shared/presentation/layout/app_bar.dart';
import '../../../../shared/presentation/layout/paper.dart';
import '../widgets/form_widget.dart';

@RoutePage()
class IncidenteDetailScreen extends ConsumerWidget {
  final Incidente? incidente;

  const IncidenteDetailScreen({super.key, this.incidente});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Paper(
        child: IncidenteForm(
          form: ref.watch(formIncidenteProvider(incidente?.id)),
          onFinalize:
              () => ref.read(routeProvider).navigate(const IncidenteRoute()),
          initialState:
              incidente != null
                  ? CreateIncidenteDto(
                    situacao: incidente!.situacao,
                    nomeRelator: incidente!.nomeRelator,
                    email: incidente!.email,
                    telefone: incidente!.telefone,
                    resumo: incidente!.resumo,
                    data: incidente!.data,
              )
                  : null,
        ),
      ),
    );
  }
}
