import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/feature/auth/presentation/login_screen.dart';
import 'package:flutter_application_1/feature/dashboard/presentation/dash_navigation_screen.dart';
import 'package:flutter_application_1/feature/dashboard/presentation/dash_rom_screen.dart';
import 'package:flutter_application_1/feature/dashboard/presentation/dashboard_screen.dart';
import 'package:flutter_application_1/feature/romaneio/presentation/screen/romaneio_detail_screen.dart';
import 'package:flutter_application_1/feature/romaneio/presentation/screen/romaneio_list_screen.dart';
import 'package:flutter_application_1/feature/romaneio/presentation/screen/romaneio_nav_screen.dart';
import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:flutter_application_1/shared/presentation/layout/main_layout.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'app.gr.dart';

final routeProvider = Provider<AppRouter>((ref) {
  return AppRouter(ref: ref);
});

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  Ref ref;

  AppRouter({required this.ref});

  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true, keepHistory: false),
    AutoRoute(
      page: MainLayoutRoute.page,
      keepHistory: false,
      path: "/app",
      // guards: [AuthGuard(ref)],
      children: [
        AutoRoute(
          path: "dashboard",
          page: DashNavigationRoute.page,
          children: [
            AutoRoute(path: "", page: DashboardRoute.page, initial: true),
            AutoRoute(path: "rom", page: DashRomRoute.page),
          ],
        ),
        AutoRoute(
          path: "romaneio",
          page: RomaneioNavigationRoute.page,
          children: [
            AutoRoute(path: "", page: RomaneioListRoute.page, initial: true),
            AutoRoute(
              path: "detail",
              page: RomaneioDetailRoute.page,
              guards: [
                // EnsureParamsGuard(fallbackRoute: const RomaneioListRoute()),
              ],
            ),
          ],
        ),
      ],
    ),
  ];
}
