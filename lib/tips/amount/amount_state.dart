import 'package:freezed_annotation/freezed_annotation.dart';

part 'amount_state.freezed.dart';

@freezed
class AmountState with _$AmountState {
  const factory AmountState(String amount) = _AmountState;
}
