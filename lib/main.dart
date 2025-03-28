import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/view/layout/gesture_detector.dart';
import 'package:flutter_application_1/shared/view/layout/notify_panel/widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oktoast/oktoast.dart';


void main() async {
  // debugRepaintTextRainbowEnabled = true;
  runApp(ProviderScope(child: OKToast(child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final router = ref.read(routeProvider);
        return GesturesDetector(
          child: Stack(
            children: [
              MaterialApp.router(
                theme: ThemeData(textTheme: GoogleFonts.robotoTextTheme()),
                routerConfig: router.config(),
                debugShowCheckedModeBanner: false,
              ),
              NotifyPanel(),
            ],
          ),
        );
      },
    );
  }
}
