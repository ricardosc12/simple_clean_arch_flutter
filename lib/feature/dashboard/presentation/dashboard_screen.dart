import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/presentation/layout/app_bar.dart';
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
              child: const Text("Dash Rom"),
            ),
          ],
        ),
      ),
    );
  }
}
