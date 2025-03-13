import 'package:flutter_application_1/shared/domain/models/doc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_doc_state.freezed.dart';
part 'list_doc_state.g.dart';

@freezed
abstract class ListDocState with _$ListDocState {
  const factory ListDocState({required List<Doc> docs}) = ListDocCompleted;
  const factory ListDocState.loading() = ListDocLoading;
  const factory ListDocState.empty() = ListDocEmpty;
  const factory ListDocState.error() = ListDocError;

  factory ListDocState.fromJson(Map<String, dynamic> json) =>
      _$ListDocStateFromJson(json);
}
