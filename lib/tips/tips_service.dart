import 'package:af_tips/tips/amount/amount_notifier.dart';
import 'package:af_tips/tips/amount/amount_state.dart';
import 'package:af_tips/tips/device/device_notifier.dart';
import 'package:af_tips/tips/device/device_state.dart';
import 'package:af_tips/tips/page_state/tips_page_notifier.dart';
import 'package:af_tips/tips/page_state/tips_page_state.dart';
import 'package:flutter/cupertino.dart';

class TipsService extends ChangeNotifier {
  // num _amount = 0;
  // set amount(num value) {
  //   _amount = value;
  //   notifyListeners();
  // }
  // num get amount => _amount;
  //
  // num _tip = 20;
  // set tip(num value) {
  //   _tip = value;
  //   notifyListeners();
  // }
  // num get tip => _tip;
  //
  // num get tipAmount => amount * (tip / 100);
  //
  // num get total => amount + tipAmount;
  //
  // bool _isWatch = false;
  //
  // set isWatch(bool value) {
  //   _isWatch = value;
  //   notifyListeners();
  // }
  //
  // bool get isWatch => _isWatch;
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
}
