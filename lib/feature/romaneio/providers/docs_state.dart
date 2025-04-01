import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/shared/domain/models/doc_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'docs_state.freezed.dart';
part 'docs_state.g.dart';

enum DocsStatus { loding, empty, loaded, error, initalLoading }

@freezed
abstract class DocsState with _$DocsState {
  const factory DocsState({
    @Default(IList.empty()) IList<Doc> docs,
    required DocsStatus status,
  }) = _DocsState;

  factory DocsState.fromJson(Map<String, dynamic> json) =>
      _$DocsStateFromJson(json);
}
