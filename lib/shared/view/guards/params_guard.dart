import 'package:auto_route/auto_route.dart';

class EnsureParamsGuard extends AutoRouteGuard {
  final PageRouteInfo fallbackRoute;

  EnsureParamsGuard({required this.fallbackRoute});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (resolver.route.args == null) {
      router.canPop()
          ? router.pop()
          : router.navigate(fallbackRoute);
    } else {
      resolver.next(true);
    }
  }
}
