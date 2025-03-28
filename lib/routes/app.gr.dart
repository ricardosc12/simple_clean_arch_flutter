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
/// [FaturaDetailPage]
class FaturaDetailRoute extends PageRouteInfo<FaturaDetailRouteArgs> {
  FaturaDetailRoute({
    Key? key,
    required Fatura fatura,
    List<PageRouteInfo>? children,
  }) : super(
         FaturaDetailRoute.name,
         args: FaturaDetailRouteArgs(key: key, fatura: fatura),
         initialChildren: children,
       );

  static const String name = 'FaturaDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FaturaDetailRouteArgs>();
      return FaturaDetailPage(key: args.key, fatura: args.fatura);
    },
  );
}

class FaturaDetailRouteArgs {
  const FaturaDetailRouteArgs({this.key, required this.fatura});

  final Key? key;

  final Fatura fatura;

  @override
  String toString() {
    return 'FaturaDetailRouteArgs{key: $key, fatura: $fatura}';
  }
}

/// generated route for
/// [FaturaListPage]
class FaturaListRoute extends PageRouteInfo<void> {
  const FaturaListRoute({List<PageRouteInfo>? children})
    : super(FaturaListRoute.name, initialChildren: children);

  static const String name = 'FaturaListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FaturaListPage();
    },
  );
}

/// generated route for
/// [FaturaNavigationPage]
class FaturaNavigationRoute extends PageRouteInfo<void> {
  const FaturaNavigationRoute({List<PageRouteInfo>? children})
    : super(FaturaNavigationRoute.name, initialChildren: children);

  static const String name = 'FaturaNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FaturaNavigationPage();
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
/// [IncidenteDetailScreen]
class IncidenteDetailRoute extends PageRouteInfo<IncidenteDetailRouteArgs> {
  IncidenteDetailRoute({
    Key? key,
    Incidente? incidente,
    List<PageRouteInfo>? children,
  }) : super(
         IncidenteDetailRoute.name,
         args: IncidenteDetailRouteArgs(key: key, incidente: incidente),
         initialChildren: children,
       );

  static const String name = 'IncidenteDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<IncidenteDetailRouteArgs>(
        orElse: () => const IncidenteDetailRouteArgs(),
      );
      return IncidenteDetailScreen(key: args.key, incidente: args.incidente);
    },
  );
}

class IncidenteDetailRouteArgs {
  const IncidenteDetailRouteArgs({this.key, this.incidente});

  final Key? key;

  final Incidente? incidente;

  @override
  String toString() {
    return 'IncidenteDetailRouteArgs{key: $key, incidente: $incidente}';
  }
}

/// generated route for
/// [IncidenteNavigationScreen]
class IncidenteNavigationRoute extends PageRouteInfo<void> {
  const IncidenteNavigationRoute({List<PageRouteInfo>? children})
    : super(IncidenteNavigationRoute.name, initialChildren: children);

  static const String name = 'IncidenteNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const IncidenteNavigationScreen();
    },
  );
}

/// generated route for
/// [IncidenteScreen]
class IncidenteRoute extends PageRouteInfo<void> {
  const IncidenteRoute({List<PageRouteInfo>? children})
    : super(IncidenteRoute.name, initialChildren: children);

  static const String name = 'IncidenteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const IncidenteScreen();
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
  RomaneioDetailRoute({Key? key, Doc? doc, List<PageRouteInfo>? children})
    : super(
        RomaneioDetailRoute.name,
        args: RomaneioDetailRouteArgs(key: key, doc: doc),
        initialChildren: children,
      );

  static const String name = 'RomaneioDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RomaneioDetailRouteArgs>(
        orElse: () => const RomaneioDetailRouteArgs(),
      );
      return RomaneioDetailScreen(key: args.key, doc: args.doc);
    },
  );
}

class RomaneioDetailRouteArgs {
  const RomaneioDetailRouteArgs({this.key, this.doc});

  final Key? key;

  final Doc? doc;

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
