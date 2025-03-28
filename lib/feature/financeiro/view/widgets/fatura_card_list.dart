import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_response.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FaturaCardWidget extends StatelessWidget {
  final Fatura fatura;
  const FaturaCardWidget({super.key, required this.fatura});

  @override
  Widget build(BuildContext context) {
    return Paper(
      child: Column(
        children: [
          Text("Número: ${fatura.numero}"),
          Text("Status: ${fatura.status?.itemLabel ?? "Desconhecido"}"),
          Consumer(
            builder: (_, ref, _) {
              return ElevatedButton(
                onPressed: () {
                  ref
                      .read(routeProvider)
                      .navigate(FaturaDetailRoute(fatura: fatura));
                },
                child: const Text("Edit"),
              );
            },
          ),
        ],
      ),
    );
  }
}
