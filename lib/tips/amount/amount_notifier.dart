import 'package:af_tips/tips/amount/amount_state.dart';
import 'package:flutter/cupertino.dart';

class AmountNotifier extends ValueNotifier<AmountState> {
  AmountNotifier(AmountState value) : super(value);

  AmountState update(String amount) {
    value = value.copyWith(amount: amount);
    return value;
  }
}