import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/auth/presentation/widgets/user_form.dart';
import 'package:flutter_application_1/feature/auth/providers/auth_provider.dart';
import 'package:flutter_application_1/feature/auth/providers/auth_state.dart';
import 'package:flutter_application_1/feature/auth/providers/form_provider.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/presentation/form_controller.dart';
import 'package:flutter_application_1/shared/presentation/layout/notify_panel/providers.dart';
import 'package:flutter_application_1/shared/presentation/layout/paper.dart';
import 'package:flutter_application_1/shared/presentation/layout/toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);

    ref.listen(authProvider, (prev, next) {
      if (next is Logged) {
        ref.read(routeProvider).navigate(const DashboardRoute());
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: SafeArea(
        child: Paper(
          child: Column(
            spacing: 15,
            children: [
              UserForm(
                userForm: ref.watch(formUserProvider),
                onFinalize:
                    (status) => {
                      if (status == FormStatus.invalid)
                        {ToastHelper.info("Preencha os campos corretamente!")},
                      if (status == FormStatus.error)
                        {
                          ToastHelper.error(
                            "Houve um erro ao tentar processar os dados!",
                            id: Uuid().v4(),
                          ),
                        },
                    },
              ),
              // ProviderScope(
              //   overrides: [formUserProvider, authProvider],
              //   child: Consumer(
              //     builder: (context, ref, child) {
              //       return Column(
              //         children: [
              //           UserForm(userForm: ref.watch(formUserProvider)),
              //           StateForm(),
              //         ],
              //       );
              //     },
              //   ),
              // ),
              Container(
                child: () {
                  switch (state) {
                    case Logged():
                      final user = state.user;
                      return Text("User Logged: $user");
                    case Error():
                      return const Text("User error");
                    case Init():
                      return const Text("User Init");
                    case Loading():
                      return const Text("User Loading");
                    case Refreshed():
                      return const Text("User Refreshed");
                  }
                }(),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(routeProvider).navigate(const RomaneioListRoute());
                },
                child: const Text("Rom Page"),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(authProvider.notifier).getDocs();
                },
                child: const Text("Get Docs"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 15,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ToastHelper.info("Info message");
                    },
                    child: const Text("Info"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ToastHelper.error("Error message", id: Uuid().v4());
                    },
                    child: const Text("Error"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ToastHelper.warn("Warn message", id: Uuid().v4());
                    },
                    child: const Text("Warn"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ToastHelper.success("Success message");
                    },
                    child: const Text("Success"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ref.read(painelProvider).close();
                    },
                    child: const Text("Close"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ref.read(painelProvider).open();
                    },
                    child: const Text("Open"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
