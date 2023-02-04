import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_page_state.freezed.dart';
part 'create_page_state.g.dart';

@freezed
class CreatePageState with _$CreatePageState {
  const factory CreatePageState({
    @Default('') String text,
  }) = _CreatePageState;

  factory CreatePageState.fromJson(Map<String, dynamic> json) =>
      _$CreatePageStateFromJson(json);
}
