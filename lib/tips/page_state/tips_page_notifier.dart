import 'package:af_tips/tips/page_state/tips_page_state.dart';
import 'package:flutter/foundation.dart';

class TipsPageNotifier extends ValueNotifier<TipsPageState> {
  TipsPageNotifier(TipsPageState value) : super(value);

  TipsPageState update(TipsPageState state) {
    value = state;
    return value;
  }
}