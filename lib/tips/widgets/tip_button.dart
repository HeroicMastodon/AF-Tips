import 'package:af_tips/tips/widgets/tips_buttons.dart';
import 'package:af_tips/tips/tips_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

class TipButton extends HookWidget {
  const TipButton({
    Key? key,
    required this.value,
  }) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    final service = useGet<TipsService>();
    final amount = useListenable(service.amount);

    final isSelected = amount.value.tipPercent == value;
    final child = Text(value.toString() + '%');

    pressHandler() => service.setTipPercent(value);

    return isSelected
        ? TipsElevatedButton(
            onTap: pressHandler,
            child: child,
          )
        : TipsOutlinedButton(
            onTap: pressHandler,
            child: child,
          );
  }
}
