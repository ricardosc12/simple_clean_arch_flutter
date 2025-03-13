import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_config.freezed.dart';
part "app_config.g.dart";

@freezed
abstract class AppConfigState with _$AppConfigState {
  const factory AppConfigState({required String baseUrl}) = _AppConfigState;
}

@riverpod
class AppConfig extends _$AppConfig {
  @override
  AppConfigState build() {
    return AppConfigState(baseUrl: "http://local.host.com");
  }

  void setBaseUrl(String baseUrl) {
    state = state.copyWith(baseUrl: baseUrl);
  }
}
