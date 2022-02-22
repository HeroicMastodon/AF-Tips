import 'package:af_tips/tips/amount/amount_notifier.dart';
import 'package:af_tips/tips/amount/amount_state.dart';
import 'package:af_tips/tips/device/device_notifier.dart';
import 'package:af_tips/tips/device/device_state.dart';
import 'package:af_tips/tips/page_state/tips_page_notifier.dart';
import 'package:af_tips/tips/page_state/tips_page_state.dart';
import 'package:af_tips/tips/widgets/keyboard/key_tap_event.dart';
import 'package:flutter/cupertino.dart';

class TipsService extends ChangeNotifier {
  final amount = AmountNotifier(const AmountState());
  final page = TipsPageNotifier(const TipsPageState.entering());
  final device = DeviceNotifier(const DeviceState.mobile());

  DeviceNotifier setDeviceState(MediaQueryData data) {
    if (data.size.longestSide < 300) {
      device.value = const DeviceState.watch();
    } else {
      device.value = const DeviceState.mobile();
    }

    return device;
  }

  AmountNotifier setTipPercent(num tip) {
    amount.value = amount.value.copyWith(tipPercent: tip);
    return amount;
  }

  void handleKeyboardEvent(KeyTapEvent event) {
    event.when(
      number: (number) {
        var value = amount.value.amount;
        if (value == "0") value = "";

        final exp = RegExp(r"\d*\.\d\d");
        final newValue = exp.hasMatch(value) ? value : value + number;

        amount.value = amount.value.copyWith(amount: newValue);
      },
      clear: () {
        amount.value = amount.value.copyWith(amount: "0");
      },
      delete: () {
        final value = amount.value.amount;
        var newValue = value.substring(0, value.length - 1);

        if (newValue == "") newValue = "0";

        amount.value = amount.value.copyWith(amount: newValue);
      },
      dot: () {
        final value = amount.value.amount;
        amount.value = amount.value.copyWith(amount: value + ".");
      },
      submit: () {
        page.value = const TipsPageState.submitted();
      },
      back: () {
        page.value = const TipsPageState.entering();
      }
    );
  }
}
