import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/dashboard/repository/dash_provider.dart';
import 'package:flutter_application_1/shared/presentation/layout/app_bar.dart';
import 'package:flutter_application_1/shared/presentation/layout/paper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class DashRomScreen extends ConsumerWidget {
  const DashRomScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashProvider);
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Expanded(
        child: Center(
          child: Paper(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final user = state.users[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Text(
                      user.email,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(user.grupoEmp),
                  ],
                );
              },
              itemCount: state.users.isNotEmpty ? 10 : 0,
            ),
          ),
        ),
      ),
    );
  }
}
