import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_users.freezed.dart';
part 'get_users.g.dart';

@freezed
abstract class GetUsersDto with _$GetUsersDto {
  factory GetUsersDto({
    required IList<GetUsersItem> dados,
    required String mensagem,
    required bool status,
    required int total,
  }) = _GetUsersDto;

  factory GetUsersDto.fromJson(Map<String, dynamic> json) =>
      _$GetUsersDtoFromJson(json);
}

@freezed
abstract class GetUsersItem with _$GetUsersItem {
  factory GetUsersItem({String? cpf, String? login, GetUsersInfo? info}) =
      _GetUsersItem;

  factory GetUsersItem.fromJson(Map<String, dynamic> json) =>
      _$GetUsersItemFromJson(json);
}

@freezed
abstract class GetUsersInfo with _$GetUsersInfo {
  factory GetUsersInfo({String? nome, String? grupo_user}) = _GetUsersInfo;

  factory GetUsersInfo.fromJson(Map<String, dynamic> json) =>
      _$GetUsersInfoFromJson(json);
}
