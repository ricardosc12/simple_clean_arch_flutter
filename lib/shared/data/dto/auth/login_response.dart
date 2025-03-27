import 'package:flutter_application_1/shared/data/dto/docs/get_doc_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application_1/shared/utils/enum.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@JsonEnum()
enum TipoEmp with EnumUpperStatus {
  @JsonValue("DISTRIBUIDORA")
  distribuidora("Distribuidora"),
  @JsonValue("TRANSPORTADORA")
  transportadora("Transportadora"),
  desconhecido("Desconhecido");

  const TipoEmp(this.itemLabel);

  @override
  final String itemLabel;
}

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required Usuario usuario,
    @GrupoConverter() required Map<String, Grupo> grupos,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

class GrupoConverter
    implements JsonConverter<Map<String, Grupo>, Map<String, dynamic>> {
  const GrupoConverter();

  @override
  Map<String, Grupo> fromJson(json) {
    return json.map((key, value) {
      if (value is bool) {
        return MapEntry(key, Grupo.inativo(value));
      } else if (value is Map<String, dynamic>) {
        return MapEntry(key, Grupo.ativo(GrupoAtivo.fromJson(value)));
      } else {
        throw TypeError();
      }
    });
  }

  @override
  Map<String, dynamic> toJson(object) {
    return object.map((key, value) => MapEntry(key, value.toJson()));
  }
}

@freezed
abstract class Grupo with _$Grupo {
  const factory Grupo.ativo(GrupoAtivo grupo) = _GrupoOrAtivo;
  const factory Grupo.inativo(bool ativo) = _GrupoOrInativo;

  factory Grupo.fromJson(Map<String, dynamic> json) => _$GrupoFromJson(json);
}

@freezed
abstract class GrupoAtivo with _$GrupoAtivo {
  const factory GrupoAtivo({
    required User user,
    required Emp emp,
    required Map<String, Base> bases,
  }) = _GrupoAtivo;

  factory GrupoAtivo.fromJson(Map<String, dynamic> json) =>
      _$GrupoAtivoFromJson(json);
}

@freezed
abstract class Base with _$Base {
  const factory Base({
    required String nome,
    required String sigla,
    required String cidade,
    required List<String> cnpjs,
    required End end,
    required Map<String, Modulo> modulos,
  }) = _Base;

  factory Base.fromJson(Map<String, dynamic> json) => _$BaseFromJson(json);
}

@freezed
abstract class End with _$End {
  const factory End({
    required String cep,
    required String estado,
    required String cidade,
    required String bairro,
    required String rua,
    required String numero,
    required Coordenada coordenada,
  }) = _End;

  factory End.fromJson(Map<String, dynamic> json) => _$EndFromJson(json);
}

@freezed
abstract class Coordenada with _$Coordenada {
  const factory Coordenada({
    required dynamic lat,
    required dynamic lng,
    required String erro,
  }) = _Coordenada;

  factory Coordenada.fromJson(Map<String, dynamic> json) =>
      _$CoordenadaFromJson(json);
}

@freezed
abstract class Modulo with _$Modulo {
  const factory Modulo({required bool ativo, required bool web}) = _Modulo;

  factory Modulo.fromJson(Map<String, dynamic> json) => _$ModuloFromJson(json);
}

@freezed
abstract class Emp with _$Emp {
  const factory Emp({
    required String grupo,
    required List<String> cnpjs,
    @JsonKey(unknownEnumValue: TipoEmp.desconhecido) required TipoEmp tipo,
    required String razaoSocial,
    required List<TipoDoc> docs,
  }) = _Emp;

  factory Emp.fromJson(Map<String, dynamic> json) => _$EmpFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    required String? nome,
    required String? email,
    required String? grupo,
    required String? area,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Usuario with _$Usuario {
  const factory Usuario({
    required String? nome,
    required String? login,
    required String? email,
    required String? grupoAtivo,
    required bool? novoUser,
    required String? cpf,
    required String? imgPerfil,
  }) = _Usuario;

  factory Usuario.fromJson(Map<String, dynamic> json) =>
      _$UsuarioFromJson(json);
}
