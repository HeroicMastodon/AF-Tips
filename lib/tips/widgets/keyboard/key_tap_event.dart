import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_tap_event.freezed.dart';

@freezed
class KeyTapEvent with _$KeyTapEvent {
  const factory KeyTapEvent.number(String value) = _Number;
  const factory KeyTapEvent.clear() = _Clear;
  const factory KeyTapEvent.delete() = _Delete;
  const factory KeyTapEvent.dot() = _Dot;
  const factory KeyTapEvent.submit() = _Submit;
}