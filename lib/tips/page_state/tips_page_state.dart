import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tips_page_state.freezed.dart';

@freezed
class TipsPageState with _$TipsPageState {
  const factory TipsPageState.entering() = _Entering;
  const factory TipsPageState.submitted() = _Submitted;
}
