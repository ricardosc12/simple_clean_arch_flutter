import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_config.freezed.dart';
part "app_config.g.dart";

enum BaseUrl {
  homolog3("https://homologacao3.azapfy.com.br"),
  prod("https://api3.azapfy.com.br"),
  canario("https://api3-canario.azapfy.com.br"),
  beta("https://api3-beta.azapfy.com.br");

  final String url;
  const BaseUrl(this.url);
}

@freezed
abstract class AppConfigState with _$AppConfigState {
  const factory AppConfigState({required String baseUrl}) = _AppConfigState;
}

@riverpod
class AppConfig extends _$AppConfig {
  @override
  AppConfigState build() {
    return AppConfigState(baseUrl: BaseUrl.prod.url);
  }

  void setBaseUrl(BaseUrl baseUrl) {
    state = state.copyWith(baseUrl: baseUrl.url);
  }
}
