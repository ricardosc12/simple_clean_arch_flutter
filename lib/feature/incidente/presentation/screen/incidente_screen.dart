import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/domain/models/incidente.dart';
import 'package:flutter_application_1/shared/presentation/layout/app_bar.dart';
import 'package:flutter_application_1/feature/incidente/presentation/widgets/buildBlock.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../routes/app.dart';
import '../../providers/incidente_provider.dart';
import '../widgets/incidente_widget.dart';

@RoutePage()
class IncidenteScreen extends ConsumerWidget {
  const IncidenteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final incidenteState = ref.watch(incidentesProvider);
    final incidentes = incidenteState.incidentes;

    final andamentoCount = incidentes
        .where((e) => e.situacao == IncidenteSituacao.andamento)
        .length;
    final finalizadoCount = incidentes
        .where((e) => e.situacao == IncidenteSituacao.finalizado)
        .length;
    final impedidoCount = incidentes
        .where((e) => e.situacao == IncidenteSituacao.impedido)
        .length;
    final pendenteCount = incidentes
        .where((e) => e.situacao == IncidenteSituacao.pendente)
        .length;

    return Scaffold(
      appBar: DefaultAppBar(),
      body: RefreshIndicator(
        onRefresh: ref.read(incidentesProvider.notifier).syncIncidente,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.router.push(IncidenteDetailRoute());
                    },
                    child: const Text("Novo incidente"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Wrap(
                spacing: 5,
                runSpacing: 5,
                children: [
                  buildBlock(
                    'Em andamento',
                    andamentoCount.toString(),
                    const Color(0xFFFF7418),
                    Colors.white,
                  ),
                  buildBlock(
                    'Finalizado',
                    finalizadoCount.toString(),
                    const Color(0xFFFF7418),
                    Colors.white,
                  ),
                  buildBlock(
                    'Impedido',
                    impedidoCount.toString(),
                    const Color(0xFFFF7418),
                    Colors.white,
                  ),
                  buildBlock(
                    'Pendente',
                    pendenteCount.toString(),
                    const Color(0xFFFF7418),
                    Colors.white,
                  ),
                ],
              ),
            ),
            // Lista de incidentes
            Expanded(
              child: ListView.builder(
                itemCount: ref.watch(
                  incidentesProvider.select((e) => e.incidentes.length),
                ),
                itemBuilder: (_, index) => ProviderScope(
                  overrides: [indexProvider.overrideWith((_) => index)],
                  child: IncidenteWidgetWrapper(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
