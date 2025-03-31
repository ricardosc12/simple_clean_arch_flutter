import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/{{name.snakeCase()}}/controllers/{{name.snakeCase()}}_controller.dart';
import 'package:flutter_application_1/feature/{{name.snakeCase()}}/states/{{name.snakeCase()}}_state.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';
import 'package:flutter_application_1/shared/view/layout/toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class {{name.pascalCase()}}Card extends ConsumerWidget {
  const {{name.pascalCase()}}Card({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Consumer(
            builder: (_, ref, _) {
              final {{name.pascalCase()}}State state = ref.watch({{name.camelCase()}}Provider);
              return Paper(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      DateTime.now().toIso8601String(),
                      style: TextStyle(fontSize: 12),
                    ),
                    Text("{{name.pascalCase()}} State: ${state.data}"),
                  ],
                ),
              );
            },
          ),
          Consumer(
            builder: (_, ref, _) {
              final bool state = ref.watch(isInternal{{name.pascalCase()}}Provider);
              return Paper(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      DateTime.now().toIso8601String(),
                      style: TextStyle(fontSize: 12),
                    ),
                    Text("isInternal: $state"),
                  ],
                ),
              );
            },
          ),
          Consumer(
            builder: (_, ref, _) {
              final state = ref.watch({{name.camelCase()}}AsyncProvider);

              return state.when(
                data:
                    (data) => Paper(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            DateTime.now().toIso8601String(),
                            style: TextStyle(fontSize: 12),
                          ),
                          Text("{{name.pascalCase()}} Union State: $data"),
                          ElevatedButton(
                            onPressed: () {
                              ref
                                  .read({{name.camelCase()}}AsyncProvider.notifier)
                                  .checkUnion()
                                  .then((data) {
                                    if (data == true) {
                                      ToastHelper.success(
                                        "Usuário com permissão!",
                                      );
                                    } else {
                                      ToastHelper.info(
                                        "Usuário sem permissão!",
                                      );
                                    }
                                  });
                            },
                            child: const Text("Chech Permission"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              ref
                                  .read({{name.camelCase()}}AsyncProvider.notifier)
                                  .switch{{name.pascalCase()}}();
                            },
                            child: const Text("Switch {{name.pascalCase()}}"),
                          ),
                        ],
                      ),
                    ),
                error:
                    (e, _) => Paper(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [Text("Error")],
                      ),
                    ),
                loading:
                    () => Paper(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [Text("Loading {{name.pascalCase()}}")],
                      ),
                    ),
              );
            },
          ),
        ],
      ),
    );
  }
}
