import 'package:flutter_application_1/shared/domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.init() = Init;
  const factory AuthState.logged({required User user}) = Logged;
  const factory AuthState.loading() = Loading;
  const factory AuthState.error() = Error;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}
