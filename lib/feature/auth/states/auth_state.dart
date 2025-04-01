import 'package:flutter_application_1/shared/data/dto/auth/refresh_response.dart';
import 'package:flutter_application_1/shared/domain/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.init() = Init;
  const factory AuthState.logged({required User user}) = Logged;
  const factory AuthState.refreshed({
    required RefreshTokenResponse refreshData,
  }) = Refreshed;
  const factory AuthState.loading() = Loading;
  const factory AuthState.error() = Error;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
