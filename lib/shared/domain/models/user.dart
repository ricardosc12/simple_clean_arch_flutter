import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String? name;
  final String email;
  final String grupoEmp;
  final List<String>? bases;

  User({
    required this.id,
    this.name,
    required this.email,
    required this.grupoEmp,
    this.bases,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return "Id $id - Email: $email - Grupo: $grupoEmp";
  }
}
