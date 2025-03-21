import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/presentation/layout/notify_panel/providers.dart';
import 'package:flutter_application_1/shared/presentation/layout/toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PainelListWidget extends ConsumerWidget {
  final ScrollController sc;

  const PainelListWidget({super.key, required this.sc});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    IList<ToastInformation> list = ref.watch(notifyProvider);

    return Expanded(
      child: ListView.builder(
        controller: sc,
        itemCount: list.length,
        itemBuilder: (context, index) {
          ToastInformation info = list[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(10, 0, 0, 0),
                  blurRadius: 2,
                  offset: Offset(0, 4),
                ),
              ],
              border: Border(
                left: BorderSide(color: info.toastType.bg, width: 5),
              ),
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment(1, 0),
                  child: Text(
                    info.time.toString(),
                    style: TextStyle(fontSize: 12, color: Colors.black38),
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    info.toastType.icon,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          info.toastType.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          info.message,
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      info.id ?? "ID não fornecido",
                      style: TextStyle(color: Colors.black45, fontSize: 12),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.copy),
                      iconSize: 16,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
