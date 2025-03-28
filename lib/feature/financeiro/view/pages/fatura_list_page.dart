import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/financeiro/view/widgets/fatura_tab.dart';
import 'package:flutter_application_1/shared/data/dto/financeiro/financeiro_response.dart';
import 'package:flutter_application_1/shared/view/layout/app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class FaturaListPage extends ConsumerWidget {
  const FaturaListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: DefaultAppBar(),
        body: Column(
          children: [
            const TabBar(
              tabs: <Widget>[
                Tab(text: "Abertas"),
                Tab(text: "Aprovadas"),
                Tab(text: "Pagas"),
                Tab(text: "Fechadas"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: const <Widget>[
                  FaturaTab(type: FaturaStatus.aberta),
                  FaturaTab(type: FaturaStatus.aprovada),
                  FaturaTab(type: FaturaStatus.paga),
                  FaturaTab(type: FaturaStatus.fechada),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
