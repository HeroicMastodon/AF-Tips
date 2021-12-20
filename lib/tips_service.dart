import 'package:flutter/cupertino.dart';

class TipsService extends ChangeNotifier {
  num _amount = 0;
  set amount(num value) {
    _amount = value;
    notifyListeners();
  }
  num get amount => _amount;

  num _tip = 20;
  set tip(num value) {
    _tip = value;
    notifyListeners();
  }
  num get tip => _tip;

  num get tipAmount => amount * (tip / 100);

  num get total => amount + tipAmount;
}