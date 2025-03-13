import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/romaneio/presentation/widgets/doc_widget.dart';
import 'package:flutter_application_1/feature/romaneio/providers/list_doc_provider.dart';
import 'package:flutter_application_1/feature/romaneio/providers/list_doc_state.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/presentation/animations/loading.dart';
import 'package:flutter_application_1/shared/presentation/layout/app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class RomaneioListScreen extends ConsumerWidget {
  const RomaneioListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ListDocState? state = ref.watch(listDocProvider).valueOrNull;

    return Scaffold(
      appBar: DefaultAppBar(),
      body: () {
        switch (state) {
          case ListDocCompleted():
            return Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(listDocProvider.notifier).syncDocs();
                  },
                  child: const Text("Sincronizar"),
                ),
                Expanded(child: ListDocWidget(docs: state.docs)),
              ],
            );

          default:
            return Center(child: LoadingProgress(size: 70));
        }
      }(),
    );
  }
}

class ListDocWidget extends StatelessWidget {
  final List<Doc> docs;

  const ListDocWidget({super.key, required this.docs});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: docs.length,
      itemBuilder: (context, index) => DocWidget(doc: docs[index]),
    );
  }
}
