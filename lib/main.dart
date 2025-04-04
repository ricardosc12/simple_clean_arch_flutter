import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/observers/auth_observer.dart';
import 'package:flutter_application_1/feature/auth/controllers/auth_controller.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_application_1/shared/view/layout/gesture_detector.dart';
import 'package:flutter_application_1/shared/view/layout/notify_panel/widget.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences/util/legacy_to_async_migration_util.dart';

void main() async {
  // debugRepaintTextRainbowEnabled = true;
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  const SharedPreferencesOptions sharedPreferencesOptions =
      SharedPreferencesOptions();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  
  await Hive.initFlutter();

  await Hive.openBox<Map<dynamic, dynamic>>("storageApp");

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
    return const _EagerInitialization(child: WrapApp());
  }
}

class WrapApp extends StatelessWidget {
  const WrapApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("INIT APP");
    return const GesturesDetector(
      child: Stack(children: [AppRouter(), NotifyPanel()]),
    );
  }
}

class AppRouter extends ConsumerWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routeProvider);
    return MaterialApp.router(
      theme: ThemeData(textTheme: GoogleFonts.robotoTextTheme()),
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
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
