import 'package:flutter_application_1/core/extensions/persistent_state.dart';
import 'package:flutter_application_1/shared/domain/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
abstract class AuthState with _$AuthState implements PersistentState {
  const factory AuthState.unlogged() = Unlogged;
  const factory AuthState.logged({required User user}) = Logged;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
