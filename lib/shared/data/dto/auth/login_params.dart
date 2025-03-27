import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params.freezed.dart';
part 'login_params.g.dart';

@freezed
abstract class LoginParam with _$LoginParam {
    const factory LoginParam({
        required String usuario,
        required String senha,
        @Default("America/Sao_Paulo") String timezone,
    }) = _LoginParam;

    factory LoginParam.fromJson(Map<String, dynamic> json) => _$LoginParamFromJson(json);
}
