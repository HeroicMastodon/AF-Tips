import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_state.freezed.dart';

@freezed
class DeviceState with _$DeviceState {
  const factory DeviceState.mobile() = _Mobile;
  const factory DeviceState.watch() = _Watch;
}