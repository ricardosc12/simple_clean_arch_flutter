import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/dashboard/controllers/docs_controllers.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class DashRomScreen extends ConsumerWidget {
  const DashRomScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => ref.invalidate(documentsProvider),
          child: const Text("Invalidate Data"),
        ),
        Expanded(child: DocumentsList()),
      ],
    );
  }
}

class DocumentsList extends ConsumerWidget {
  const DocumentsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(documentsCachedProvider);
    final profile = ref.watch(cachedProfileProvider);
    return state.when(
      skipLoadingOnReload: true,
      data: (data) {
        return Column(
          children: [
            Text("Documents: ${data.length}"),
            Text("Profile: $profile"),
            ElevatedButton(
              onPressed: () => ref.invalidate(cachedProfileProvider),
              child: const Text("Profile"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Paper(child: Text(data[index].ar ?? "Sem AR"));
                },
              ),
            ),
          ],
        );
      },
      error: (_, _) => const Text("Error"),
      loading: () => const Text("Loading"),
    );
  }
}
