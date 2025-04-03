import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/feature/auth/view/pages/login_page.dart';
import 'package:flutter_application_1/feature/dashboard/view/dash_navigation_screen.dart';
import 'package:flutter_application_1/feature/dashboard/view/dash_rom_screen.dart';
import 'package:flutter_application_1/feature/dashboard/view/dashboard_screen.dart';
import 'package:flutter_application_1/feature/financeiro/view/pages/fatura_detail_page.dart';
import 'package:flutter_application_1/feature/financeiro/view/pages/fatura_list_page.dart';
import 'package:flutter_application_1/feature/financeiro/view/pages/fatura_navigation.dart';
import 'package:flutter_application_1/feature/incidente/presentation/screen/incidente_detail_screen.dart';
import 'package:flutter_application_1/feature/incidente/presentation/screen/incidente_nav_screen.dart';
import 'package:flutter_application_1/feature/incidente/presentation/screen/incidente_screen.dart';
import 'package:flutter_application_1/feature/profile/view/pages/profile_page.dart';
import 'package:flutter_application_1/feature/romaneio/view/screen/romaneio_detail_screen.dart';
import 'package:flutter_application_1/feature/romaneio/view/screen/romaneio_list_screen.dart';
import 'package:flutter_application_1/feature/romaneio/view/screen/romaneio_nav_screen.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_response.dart';
import 'package:flutter_application_1/shared/domain/models/doc_model.dart';
import 'package:flutter_application_1/shared/domain/models/incidente_model.dart';
import 'package:flutter_application_1/shared/view/guards/auth_guard.dart';
import 'package:flutter_application_1/shared/view/guards/params_guard.dart';
import 'package:flutter_application_1/shared/view/layout/main_layout.dart';
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
    AutoRoute(page: HomeRoute.page, keepHistory: false),
    AutoRoute(
      page: MainLayoutRoute.page,
      keepHistory: false,
      initial: true,
      path: "/app",
      guards: [AuthGuard(ref)],
      children: [
        AutoRoute(
          path: "incidente",
          page: IncidenteNavigationRoute.page,
          children: [
            AutoRoute(path: "", page: IncidenteRoute.page, initial: true),
            AutoRoute(path: "detail", page: IncidenteDetailRoute.page),
          ],
        ),
        CustomRoute(
          path: "profile",
          page: ProfileRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        AutoRoute(
          path: "dashboard",
          page: DashNavigationRoute.page,

          children: [
            AutoRoute(path: "", page: DashboardRoute.page, initial: true),
            AutoRoute(path: "rom", page: DashRomRoute.page),
          ],
        ),
        AutoRoute(
          path: "faturas",
          page: FaturaNavigationRoute.page,
          children: [
            AutoRoute(path: "", page: FaturaListRoute.page, initial: true),
            AutoRoute(
              path: "detail",
              page: FaturaDetailRoute.page,
              guards: [
                EnsureParamsGuard(fallbackRoute: const FaturaListRoute()),
              ],
            ),
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
