import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    String? name,
    String? email,
    required String grupoEmp,
    required List<String> bases,
    required List<String> grupos,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
