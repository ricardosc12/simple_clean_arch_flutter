import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'http_exception.freezed.dart';
part 'http_exception.g.dart';

@freezed
abstract class AppException with _$AppException implements Exception {
  const AppException._();
  
  const factory AppException({
    required String message,
    int? statusCode,
    String? id,
  }) = _AppException;

  factory AppException.fromJson(Map<String, dynamic> json) =>
      _$AppExceptionFromJson(json);

  AppException withLog() {
    return copyWith(id: Uuid().v4().toString());
  }
}
