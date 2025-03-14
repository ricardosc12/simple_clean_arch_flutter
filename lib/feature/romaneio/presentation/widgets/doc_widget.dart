import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/romaneio/providers/docs_provider.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/presentation/layout/paper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DocWidgetWrapper extends ConsumerWidget {
  const DocWidgetWrapper({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int index = ref.read(indexProvider);
    Doc doc = ref.watch(docsProvider.select((e) => e.docs[index]));
    return DocWidget(doc: doc);
  }
}

class DocWidget extends ConsumerWidget {
  final Doc doc;

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
          Text(doc.status.name),
          Text(doc.destinatario),
          Text(doc.remetente),
          () {
            final date = getDate();
            return Text(date);
          }(),
          Consumer(
            builder:
                (_, ref, _) => OutlinedButton(
                  onPressed: () {
                    ref
                        .read(routeProvider)
                        .navigate(RomaneioDetailRoute(doc: doc));
                  },
                  child: const Text("Detail"),
                ),
          ),
        ],
      ),
    );
  }
}
