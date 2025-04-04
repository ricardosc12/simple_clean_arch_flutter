import 'package:flutter_application_1/core/extensions/persistent_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';
part 'profile_state.g.dart';

// Exemplo de "Union Types"
@freezed
sealed class UnionProfileState with _$UnionProfileState {
  const factory UnionProfileState.admin({
    required String name,
    required bool adminId,
  }) = ProfileAdmin;

  const factory UnionProfileState.common({required String name}) =
      ProfileCommon;

  factory UnionProfileState.fromJson(Map<String, dynamic> json) =>
      _$UnionProfileStateFromJson(json);
}

@Freezed(toJson: true)
abstract class ProfileState with _$ProfileState implements PersistentState {
  const factory ProfileState({required String data}) = _ProfileState;

  factory ProfileState.fromJson(Map<String, dynamic> json) =>
      _$ProfileStateFromJson(json);
}
