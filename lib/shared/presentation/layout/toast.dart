import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/presentation/animations/toast.dart';
import 'package:flutter_application_1/shared/presentation/layout/notify_panel/providers.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oktoast/oktoast.dart';

part 'toast.freezed.dart';
part 'toast.g.dart';

enum ToastType {
  sucess(
    icon: Icon(Icons.check, color: Colors.green, size: 24),
    bg: Colors.green,
    title: "Success",
  ),
  info(
    icon: Icon(Icons.info, color: Colors.blue, size: 24),
    bg: Colors.blue,
    title: "Info",
  ),
  warn(
    icon: Icon(Icons.error, color: Colors.orange, size: 24),
    bg: Colors.orange,
    title: "Warn",
  ),
  error(
    icon: Icon(Icons.close, color: Colors.red, size: 24),
    bg: Colors.red,
    title: "Error",
  );

  final Icon icon;
  final Color bg;
  final String title;

  const ToastType({required this.icon, required this.bg, required this.title});
}

@freezed
abstract class ToastInformation with _$ToastInformation {
  ToastInformation._({DateTime? time}) : time = DateTime.now();

  factory ToastInformation({
    required ToastType toastType,
    required String message,
    DateTime? time,
    String? id,
  }) = _ToastInformation;

  @override
  final DateTime time;

  factory ToastInformation.fromJson(Map<String, dynamic> json) =>
      _$ToastInformationFromJson(json);
}

class ToastHelper {
  static void success(String message) {
    _showToast(message, toastType: ToastType.sucess);
  }

  static void info(String message) {
    _showToast(message, toastType: ToastType.info);
  }

  static void warn(String message, {required String id}) {
    _showToast(message, toastType: ToastType.warn, id: id);
  }

  static void error(String message, {required String id}) {
    _showToast(message, toastType: ToastType.error, id: id);
  }

  static void _showToast(
    String message, {
    required ToastType toastType,
    String? id,
  }) {
    showToastWidget(
      ToastContent(
        toastInformation: ToastInformation(
          message: message,
          toastType: toastType,
          id: id,
        ),
      ),
      handleTouch: true,
      dismissOtherToast: true,
      animationBuilder: toastAnimation,
      position: ToastPosition(align: Alignment(1.0, 1.0)),
      duration: Duration(seconds: 3),
    );
  }
}

class ToastContent extends HookConsumerWidget {
  final ToastInformation toastInformation;

  const ToastContent({super.key, required this.toastInformation});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(Duration(), () {
        if (toastInformation.toastType == ToastType.error ||
            toastInformation.toastType == ToastType.warn) {
          ref.read(notifyProvider.notifier).addNotify(toastInformation);
        }
      });
      return null;
    }, []);

    return Container(
      margin: EdgeInsets.only(right: 20, bottom: 20),
      padding: EdgeInsets.only(right: 10, top: 8, bottom: 8, left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
        border: Border(
          left: BorderSide(color: toastInformation.toastType.bg, width: 5),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 10,
        children: [
          toastInformation.toastType.icon,
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                toastInformation.toastType.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(toastInformation.message),
            ],
          ),
          IconButton(
            onPressed: () {
              ref.read(painelProvider).open();
            },
            icon: Icon(Icons.menu_book, color: Colors.black26),
          ),
        ],
      ),
    );
  }
}
