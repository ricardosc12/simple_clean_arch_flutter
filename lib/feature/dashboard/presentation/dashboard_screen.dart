import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/auth/providers/auth_provider.dart';
import 'package:flutter_application_1/feature/auth/providers/auth_state.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/presentation/layout/app_bar.dart';
import 'package:flutter_application_1/shared/presentation/layout/paper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(routeProvider).navigate(const HomeRoute());
                  },
                  child: const Text("Login Page"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(routeProvider).navigate(const DashRomRoute());
                  },
                  child: const Text("Dash Detail"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(authProvider.notifier).refresh();
                  },
                  child: const Text("Refresh Token"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(authProvider.notifier).getUsers();
                  },
                  child: const Text("Get Users"),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Paper(
                  child: Consumer(
                    builder: (context, ref, child) {
                      AuthState user = ref.watch(authProvider);

                      if (user is Logged) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "User Logado: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(user.user.email ?? ""),
                            Text(user.user.grupoAtivo ?? ""),
                          ],
                        );
                      } else if (user is Refreshed) {
                        return const Text("Usuário Atualizado e Reconhecido");
                      } else if (user is Error) {
                        return const Text("Usuário não autenticado");
                      } else {
                        return const Text("Não logado");
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
