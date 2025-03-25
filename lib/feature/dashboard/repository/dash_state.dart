import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/shared/domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dash_state.freezed.dart';
part 'dash_state.g.dart';

@freezed
abstract class DashState with _$DashState {
  const factory DashState({required IList<User> users}) = _DashState;

  factory DashState.fromJson(Map<String, dynamic> json) =>
      _$DashStateFromJson(json);
}
