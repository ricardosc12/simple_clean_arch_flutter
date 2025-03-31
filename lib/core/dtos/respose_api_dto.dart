import 'package:freezed_annotation/freezed_annotation.dart';

part 'respose_api_dto.freezed.dart';
part 'respose_api_dto.g.dart';

@freezed
abstract class ApiError with _$ApiError {
  factory ApiError({required String message, required String status}) =
      _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}

@Freezed(genericArgumentFactories: true)
abstract class ApiSuccess<T> with _$ApiSuccess<T> {
  factory ApiSuccess({
    required String? mensagem,
    required String? erro,
    required bool status,
    required T dados,
  }) = _ApiSuccess;

  factory ApiSuccess.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ApiSuccessFromJson<T>(json, fromJsonT);
}
