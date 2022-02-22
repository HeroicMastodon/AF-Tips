import 'package:freezed_annotation/freezed_annotation.dart';

part 'amount_state.freezed.dart';

@freezed
class AmountState with _$AmountState {
  const AmountState._();

  const factory AmountState([
    @Default("0") String amount,
    @Default(20) num tipPercent,
  ]) = _AmountState;

  num get tipAmount => num.parse(amount) * (tipPercent / 100);
  num get total => num.parse(amount) + tipAmount;
}
