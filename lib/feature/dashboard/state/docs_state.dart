import 'package:freezed_annotation/freezed_annotation.dart';

part 'docs_state.freezed.dart';
part 'docs_state.g.dart';

@freezed
abstract class MobileDocsState with _$MobileDocsState {
  factory MobileDocsState({required String ar, required String tipo}) =
      _MobileDocsState;

  factory MobileDocsState.fromJson(Map<String, dynamic> json) =>
      _$MobileDocsStateFromJson(json);
}
