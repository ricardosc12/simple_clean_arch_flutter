import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/observers/auth_observer.dart';
import 'package:flutter_application_1/feature/auth/controllers/auth_controller.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:flutter_application_1/shared/view/layout/gesture_detector.dart';
import 'package:flutter_application_1/shared/view/layout/notify_panel/widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences/util/legacy_to_async_migration_util.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // debugRepaintTextRainbowEnabled = true;
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  const SharedPreferencesOptions sharedPreferencesOptions =
      SharedPreferencesOptions();
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  await migrateLegacySharedPreferencesToSharedPreferencesAsyncIfNecessary(
    legacySharedPreferencesInstance: prefs,
    sharedPreferencesAsyncOptions: sharedPreferencesOptions,
    migrationCompletedKey: 'migrationCompleted',
  );

  runApp(
    ProviderScope(observers: [AuthObserver()], child: OKToast(child: MyApp())),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final router = ref.read(routeProvider);
        return _EagerInitialization(
          child: GesturesDetector(
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
          ),
        );
      },
    );
  }
}

class _EagerInitialization extends ConsumerWidget {
  const _EagerInitialization({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authProvider);
    return child;
  }
}
