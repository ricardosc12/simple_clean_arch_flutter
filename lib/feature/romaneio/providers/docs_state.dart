import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/core/extensions/persistent_state.dart';
import 'package:flutter_application_1/shared/domain/models/doc_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'docs_state.freezed.dart';
part 'docs_state.g.dart';

@freezed
abstract class DocsState with _$DocsState implements PersistentState {
  const factory DocsState({@Default(IList.empty()) IList<Doc> docs}) =
      _DocsState;

  factory DocsState.fromJson(Map<String, dynamic> json) =>
      _$DocsStateFromJson(json);
}
