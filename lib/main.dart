import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  // debugRepaintRainbowEnabled = true;

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder:
          (_, ref, _) => MaterialApp.router(
            routerConfig: ref.read(routeProvider).config(),
            debugShowCheckedModeBanner: false,
          ),
    );
  }
}
