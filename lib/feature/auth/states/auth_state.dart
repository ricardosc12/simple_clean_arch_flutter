import 'package:flutter_application_1/shared/data/dto/auth/login_response.dart';
import 'package:flutter_application_1/shared/domain/models/get_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.init() = Init;
  const factory AuthState.logged({required Usuario user}) = Logged;
  const factory AuthState.refreshed({required RefreshData refreshData}) =
      Refreshed;
  const factory AuthState.loading() = Loading;
  const factory AuthState.error() = Error;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
