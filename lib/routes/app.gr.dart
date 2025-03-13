// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app.dart';

/// generated route for
/// [DashNavigationScreen]
class DashNavigationRoute extends PageRouteInfo<void> {
  const DashNavigationRoute({List<PageRouteInfo>? children})
    : super(DashNavigationRoute.name, initialChildren: children);

  static const String name = 'DashNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashNavigationScreen();
    },
  );
}

/// generated route for
/// [DashRomScreen]
class DashRomRoute extends PageRouteInfo<void> {
  const DashRomRoute({List<PageRouteInfo>? children})
    : super(DashRomRoute.name, initialChildren: children);

  static const String name = 'DashRomRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashRomScreen();
    },
  );
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [MainLayoutPage]
class MainLayoutRoute extends PageRouteInfo<void> {
  const MainLayoutRoute({List<PageRouteInfo>? children})
    : super(MainLayoutRoute.name, initialChildren: children);

  static const String name = 'MainLayoutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainLayoutPage();
    },
  );
}

/// generated route for
/// [RomaneioDetailScreen]
class RomaneioDetailRoute extends PageRouteInfo<RomaneioDetailRouteArgs> {
  RomaneioDetailRoute({
    Key? key,
    required Doc doc,
    List<PageRouteInfo>? children,
  }) : super(
         RomaneioDetailRoute.name,
         args: RomaneioDetailRouteArgs(key: key, doc: doc),
         initialChildren: children,
       );

  static const String name = 'RomaneioDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RomaneioDetailRouteArgs>();
      return RomaneioDetailScreen(key: args.key, doc: args.doc);
    },
  );
}

class RomaneioDetailRouteArgs {
  const RomaneioDetailRouteArgs({this.key, required this.doc});

  final Key? key;

  final Doc doc;

  @override
  String toString() {
    return 'RomaneioDetailRouteArgs{key: $key, doc: $doc}';
  }
}

/// generated route for
/// [RomaneioListScreen]
class RomaneioListRoute extends PageRouteInfo<void> {
  const RomaneioListRoute({List<PageRouteInfo>? children})
    : super(RomaneioListRoute.name, initialChildren: children);

  static const String name = 'RomaneioListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RomaneioListScreen();
    },
  );
}

/// generated route for
/// [RomaneioNavigationScreen]
class RomaneioNavigationRoute extends PageRouteInfo<void> {
  const RomaneioNavigationRoute({List<PageRouteInfo>? children})
    : super(RomaneioNavigationRoute.name, initialChildren: children);

  static const String name = 'RomaneioNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RomaneioNavigationScreen();
    },
  );
}
