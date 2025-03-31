import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app.dart';

@RoutePage()
class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        DashboardRoute(),
        RomaneioNavigationRoute(),
        IncidenteNavigationRoute(),
        FaturaNavigationRoute(),
        ProfileRoute()
      ],

      transitionBuilder:
          (context, child, animation) =>
              FadeTransition(opacity: animation, child: child),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: Column(children: [Expanded(child: child)]),
          bottomNavigationBar: BottomNavigationBar(
            type:
                BottomNavigationBarType.fixed, // Garante que o layout não mude
            backgroundColor: Colors.white, // Defina a cor desejada
            selectedItemColor: Colors.orange, // Cor do item selecionado
            unselectedItemColor: Colors.grey, // Cor dos itens não selecionados
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                label: "Dashboard",
                icon: const Icon(Icons.auto_graph_sharp),
              ),
              BottomNavigationBarItem(
                label: "Romaneio",
                icon: const Icon(Icons.fire_truck),
              ),
              BottomNavigationBarItem(
                label: "Incidente",
                icon: const Icon(Icons.chat),
              ),
              BottomNavigationBarItem(
                label: "Faturas",
                icon: const Icon(Icons.money),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: const Icon(Icons.person),
              ),
            ],
          ),
        );
      },
    );
  }
}
