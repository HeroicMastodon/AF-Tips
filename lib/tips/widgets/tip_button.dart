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
    final device = useListenable(service.device);

    final isSelected = amount.value.tipPercent == value;

    final isWatch = device.value.when(mobile: () => false, watch: () => true);

    pressHandler() => service.setTipPercent(value);

    final child = Text(value.toString() + '%');

    var shape =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(45.0));

    var density = isWatch
        ? const VisualDensity(horizontal: -4, vertical: -3)
        : VisualDensity.standard;

    final elevatedStyle =
        ElevatedButton.styleFrom(shape: shape, visualDensity: density);
    final outlinedStyle = OutlinedButton.styleFrom(
        shape: shape,
        visualDensity: density,
        side: BorderSide(color: Theme.of(context).colorScheme.primary));

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
