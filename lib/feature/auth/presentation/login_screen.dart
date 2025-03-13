import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/auth/providers/auth_provider.dart';
import 'package:flutter_application_1/feature/auth/providers/auth_state.dart';
import 'package:flutter_application_1/feature/auth/presentation/widgets/user_form.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateForm extends ConsumerWidget {
  const StateForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);
    return Text("State: $state");
  }
}

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
        child: Column(
          spacing: 15,
          children: [
            UserForm(userForm: ref.watch(formUserProvider)),
            StateForm(),
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
                }
              }(),
            ),
            const Buttons(),
            ElevatedButton(
              onPressed: () {
                ref.read(routeProvider).navigate(const DashboardRoute());
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

class Buttons extends ConsumerWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [

      ],
    );
  }
}
