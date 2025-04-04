import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/romaneio/providers/docs_provider.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/domain/models/doc_model.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DocWidgetWrapper extends ConsumerWidget {
  const DocWidgetWrapper({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int index = ref.read(indexProvider);
    DocTeste? doc = ref.watch(
      docsProvider.select((e) => e.valueOrNull?.docs[index]),
    );
    return doc != null
        ? DocWidget(doc: doc)
        : const Text("Documento não encontrado!");
  }
}

class DocWidget extends ConsumerWidget {
  final DocTeste doc;

  const DocWidget({super.key, required this.doc});

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
          Text(doc.ar),
          Text(doc.status.itemLabel),
          Text(doc.destinatario),
          Text(doc.remetente),
          Text(getDate()),
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
                            .navigate(RomaneioDetailRoute(doc: doc));
                      },
                      child: const Text("Detail"),
                    ),
                    TextButton(
                      onPressed: () {
                        ref.read(docsProvider.notifier).removeDoc(ar: doc.ar);
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
