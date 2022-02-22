import 'package:af_tips/tips/device/device_state.dart';
import 'package:flutter/cupertino.dart';

class DeviceNotifier extends ValueNotifier<DeviceState> {
  DeviceNotifier(DeviceState value) : super(value);

  DeviceState update(DeviceState state) {
    value = state;
    return value;
  }
}