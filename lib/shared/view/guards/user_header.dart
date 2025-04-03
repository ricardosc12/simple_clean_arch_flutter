import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/auth/controllers/auth_controller.dart';
import 'package:flutter_application_1/feature/auth/states/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserHeader extends ConsumerWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(authProvider).valueOrNull;

    switch (state) {
      case Logged():
        final user = state.user;
        return Row(
          children: [
            Text(user.grupoEmp),
            const Icon(Icons.person, color: Color.fromARGB(255, 255, 255, 255)),
          ],
        );
      default:
        return const Icon(
          Icons.person_off,
          color: Color.fromARGB(255, 255, 255, 255),
        );
    }
  }
}
