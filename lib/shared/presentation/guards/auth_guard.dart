import 'package:auto_route/auto_route.dart';
import 'package:flutter_application_1/feature/auth/providers/auth_provider.dart';
import 'package:flutter_application_1/feature/auth/providers/auth_state.dart';
import 'package:flutter_application_1/routes/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthGuard extends AutoRouteGuard {
  final Ref ref;

  AuthGuard(this.ref);
  
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final state = ref.read(authProvider);
    if (state is Logged) {
      resolver.next(true);
    } else {
      router.push(const HomeRoute());
    }
  }
}
