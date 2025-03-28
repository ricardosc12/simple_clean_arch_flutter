import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/financeiro/controllers/fatura_controller.dart';
import 'package:flutter_application_1/feature/financeiro/view/widgets/fatura_card_list.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_response.dart';
import 'package:flutter_application_1/shared/view/animations/loading.dart';
import 'package:flutter_application_1/shared/view/layout/toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FaturaTab extends ConsumerWidget {
  final FaturaStatus type;

  const FaturaTab({super.key, required this.type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faturas = ref.watch(getFaturasByStatusProvider(type));

    ref.listen(listFaturaProvider, (_, next) {
      if (next.hasError) {
        ToastHelper.error(
          "Não foi possível obter as faturas",
          id: "12837192837129837",
        );
      }
    });

    return faturas.when(
      data:
          (data) => ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return FaturaCardWidget(fatura: data[index]);
            },
          ),
      error: (e, s) {
        return Center(
          child: ElevatedButton(
            onPressed: () {
              ref.invalidate(listFaturaProvider);
            },
            child: const Text("Carregar novamente"),
          ),
        );
      },
      loading: () => const Center(child: LoadingProgress()),
    );
  }
}
