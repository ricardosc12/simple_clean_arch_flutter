import 'package:mason/mason.dart';
import 'dart:io';

void run(HookContext context) {
  final featureName = context.vars['name'].toString().snakeCase;
  final className = context.vars['name'].toString().pascalCase;
  final includeInBottomNav =
      context.vars['includeInBottomNav'] as bool? ?? false;

  final importStatement =
      "import 'package:flutter_application_1/feature/$featureName/view/pages/${featureName}_page.dart';";
  final routeStatement =
      "        AutoRoute(path: \"$featureName\", page: ${className}Route.page),";

  modifyAppRoutes(importStatement, routeStatement);

  if (includeInBottomNav) {
    modifyMainLayout(className);
  }
}

/// Modifica `app.dart` adicionando o import e a rota
void modifyAppRoutes(String importStatement, String routeStatement) {
  final mainFile = File('lib/routes/app.dart');
  if (!mainFile.existsSync()) return;

  final lines = mainFile.readAsLinesSync();

  if (!lines.contains(importStatement)) {
    insertImport(lines, importStatement);
  }

  if (!lines.contains(routeStatement)) {
    insertRoute(lines, routeStatement);
  }

  mainFile.writeAsStringSync(lines.join('\n'));
}

/// Modifica `main_layout.dart` adicionando a nova rota e o item no BottomNavigation
void modifyMainLayout(String className) {
  final layoutFile = File('lib/shared/view/layout/main_layout.dart');
  if (!layoutFile.existsSync()) return;

  final layoutLines = layoutFile.readAsLinesSync();

  if (!layoutLines.any((line) => line.contains("${className}Route"))) {
    insertAutoTabsRouter(layoutLines, className);
    insertBottomNavigation(layoutLines, className);
    layoutFile.writeAsStringSync(layoutLines.join('\n'));
  }
}

/// Insere o import no local correto
void insertImport(List<String> lines, String importStatement) {
  final insertIndex =
      lines.lastIndexWhere((line) => line.startsWith('import ')) + 1;
  lines.insert(insertIndex, importStatement);
}

/// Insere a rota dentro do `children`, logo após `page: MainLayoutRoute.page`
void insertRoute(List<String> lines, String routeStatement) {
  final mainLayoutIndex =
      lines.indexWhere((line) => line.contains('page: MainLayoutRoute.page'));
  if (mainLayoutIndex == -1) return;

  final childrenIndex =
      lines.indexWhere((line) => line.contains('children: ['), mainLayoutIndex);
  if (childrenIndex == -1) return;

  lines.insert(childrenIndex + 1, routeStatement);
}

/// Insere a nova rota no `AutoTabsRouter.routes`
void insertAutoTabsRouter(List<String> lines, String className) {
  final routesIndex =
      lines.indexWhere((line) => line.contains('routes: const ['));
  if (routesIndex == -1) return;

  lines.insert(routesIndex + 1, "        ${className}Route(),");
}

/// Insere corretamente o item no `BottomNavigationBarItem`
void insertBottomNavigation(List<String> lines, String className) {
  final itemsIndex = lines.indexWhere((line) {
    return line.contains('BOTTOMNAV INIT');
  });

  if (itemsIndex == -1) return;

  final newItem = """
              BottomNavigationBarItem(
                label: "$className",
                icon: const Icon(Icons.circle),
              ),""";

  lines.insert(itemsIndex + 1, newItem);
}
