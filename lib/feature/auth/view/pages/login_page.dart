import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/auth/controllers/auth_controller.dart';
import 'package:flutter_application_1/feature/auth/controllers/auth_form_controller.dart';
import 'package:flutter_application_1/feature/auth/states/auth_state.dart';
import 'package:flutter_application_1/feature/auth/view/widgets/user_form.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/view/form_controller.dart';
import 'package:flutter_application_1/shared/view/layout/paper.dart';
import 'package:flutter_application_1/shared/view/layout/toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);

    ref.listen(authProvider, (prev, next) async {
      next.whenData((user) {
        if (user is Logged) {
          ref.read(routeProvider).navigate(const DashboardRoute());
        }
      });
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
              Container(
                child: () {
                  return state.when(
                    data: (data) {
                      if (data is Logged) {
                        return Text(
                          "Logged: ${data.user.name ?? "Nome desconhecido"}",
                        );
                      }
                      if (data is Unlogged) return Text("Unlogged");
                    },
                    error: (_, _) => const Text("User Error"),
                    loading: () => const Text("Loading"),
                  );
                }(),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(routeProvider).navigate(const RomaneioListRoute());
                },
                child: const Text("Rom Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
