import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/romaneio/providers/docs_provider.dart';
import 'package:flutter_application_1/feature/romaneio/view/widgets/doc_widget.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class RomaneioListScreen extends ConsumerWidget {
  const RomaneioListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      // onRefresh: ref.invalidate(docsProvider),
      onRefresh: () => Future.value(),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ref.read(docsProvider.notifier).pushDoc();
                      },
                      child: const Text("Render Test"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(routeProvider).navigate(RomaneioDetailRoute());
                      },
                      child: const Text("Adicionar Doc"),
                    ),
                  ],
                ),
                Consumer(
                  builder: (_, ref, _) {
                    final docsLength = ref.watch(
                      docsProvider.select((e) => e.valueOrNull?.docs.length),
                    );
                    return Text("Documentos totais: ${docsLength ?? 0}");
                  },
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount:
                  ref.watch(
                    docsProvider.select((e) => e.valueOrNull?.docs.length),
                  ) ??
                  0,
              itemBuilder:
                  (_, index) => ProviderScope(
                    overrides: [indexProvider.overrideWith((_) => index)],
                    child: DocWidgetWrapper(),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
