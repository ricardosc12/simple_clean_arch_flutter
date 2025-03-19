import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/presentation/layout/notify_panel/list_widget.dart';
import 'package:flutter_application_1/shared/presentation/layout/notify_panel/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class NotifyPanel extends ConsumerWidget {
  const NotifyPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final painel = ref.read(painelProvider);
    return SlidingUpPanel(
      renderPanelSheet: false,
      panelBuilder: (sc) => NotifyPanelWidget(sc: sc),
      backdropEnabled: true,
      controller: painel,
      minHeight: 0,
    );
  }
}

class NotifyPanelWidget extends StatelessWidget {
  final ScrollController sc;

  const NotifyPanelWidget({super.key, required this.sc});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
        color: Color(0XEFFFFFFF),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 80,
            height: 6,
            decoration: BoxDecoration(
              color: Color(0xDDDDDDDD),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Notificações Recentes",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: const Color.fromARGB(206, 0, 0, 0),
                ),
              ),
            ),
          ),
          PainelListWidget(sc: sc),
        ],
      ),
    );
  }
}
