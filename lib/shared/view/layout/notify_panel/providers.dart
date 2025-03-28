import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:flutter_application_1/shared/view/layout/toast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'providers.freezed.dart';
part 'providers.g.dart';

@freezed
abstract class NotifyPanelList with _$NotifyPanelList {
  factory NotifyPanelList({required IList<ToastInformation> list}) =
      _NotifyPanelList;
}

final painelProvider = Provider<PanelController>((ref) {
  return PanelController();
});

@riverpod
class Notify extends _$Notify {
  @override
  IList<ToastInformation> build() {
    return IList();
  }

  void addNotify(ToastInformation info) {
    if (info.id == null) {
      LogService.logger.error("ID de notificação não fornecido!");
    }
    state = state.insert(0, info);
  }
}
