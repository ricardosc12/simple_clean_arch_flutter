import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../routes/app.dart';
import '../../../../shared/domain/models/incidente.dart';
import '../../../../shared/presentation/layout/paper.dart';
import '../../providers/incidente_provider.dart';

class IncidenteWidgetWrapper extends ConsumerWidget {
  IncidenteWidgetWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int index = ref.read(indexProvider);

    final incidentes = ref.watch(
      incidentesProvider.select((i) => i.incidentes),
    );

    if (incidentes.isNotEmpty && index < incidentes.length) {
      Incidente incidente = incidentes[index];
      return IncidenteWidget(incidente: incidente);
    } else {
      return const Text('índice fora do intervalo');
    }
  }
}

class IncidenteWidget extends ConsumerWidget {
  final Incidente incidente;

  const IncidenteWidget({super.key, required this.incidente});

  String getDate() {
    final date = DateTime.now();

    return date.toString();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Paper(
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(incidente.id),
          Text(incidente.situacao.itemLabel),
          Text(incidente.nomeRelator),
          Text(incidente.telefone),
          Text(incidente.email),
          Text(incidente.resumo),
          Consumer(
            builder:
                (_, ref, _) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ref
                            .read(routeProvider)
                            .navigate(
                              IncidenteDetailRoute(incidente: incidente),
                            );
                      },
                      child: const Text("Detail"),
                    ),
                    TextButton(
                      onPressed: () {
                        ref
                            .read(incidentesProvider.notifier)
                            .removeIncidente(id: incidente.id);
                      },
                      child: const Text("Deletar"),
                    ),
                  ],
                ),
          ),
        ],
      ),
    );
  }
}
