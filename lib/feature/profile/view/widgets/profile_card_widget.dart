import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/auth/controllers/auth_controller.dart';
import 'package:flutter_application_1/feature/profile/controllers/profile_controller.dart';
import 'package:flutter_application_1/feature/profile/states/profile_state.dart';
import 'package:flutter_application_1/feature/profile/view/widgets/teste.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';
import 'package:flutter_application_1/shared/view/layout/toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileCard extends ConsumerWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileTeste(),
          Consumer(
            builder: (_, ref, _) {
              final ProfileState state = ref.watch(profileProvider);
              return Paper(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      DateTime.now().toIso8601String(),
                      style: TextStyle(fontSize: 12),
                    ),
                    Text("Profile State: ${state.data}"),
                  ],
                ),
              );
            },
          ),
          Consumer(
            builder: (_, ref, _) {
              final IList<String> state = ref.watch(userGruposProvider);
              return Paper(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      DateTime.now().toIso8601String(),
                      style: TextStyle(fontSize: 12),
                    ),
                    Text("User Groups: ${state.splitAt(3)}"),
                  ],
                ),
              );
            },
          ),
          Consumer(
            builder: (_, ref, _) {
              final bool state = ref.watch(isAdminProvider);
              return Paper(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      DateTime.now().toIso8601String(),
                      style: TextStyle(fontSize: 12),
                    ),
                    Text("isAdmin: $state"),
                  ],
                ),
              );
            },
          ),
          Consumer(
            builder: (_, ref, _) {
              final state = ref.watch(profileAsyncProvider);

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
                          Text("Profile Union State: $data"),
                          ElevatedButton(
                            onPressed: () {
                              ref
                                  .read(profileAsyncProvider.notifier)
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
                                  .read(profileAsyncProvider.notifier)
                                  .switchProfile();
                            },
                            child: const Text("Switch Profile"),
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
                        children: [Text("Loading Profile")],
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
