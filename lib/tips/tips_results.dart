import 'package:af_tips/tips/tips_service.dart';
import 'package:af_tips/tips/widgets/keyboard/key_tap_event.dart';
import 'package:af_tips/tips/widgets/tips_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

import 'widgets/tip_button.dart';

class TipsResult extends HookWidget {
  const TipsResult({
    Key? key,
    required this.padding,
    required this.textStyle,
    required this.tipAmount,
    required this.total,
  }) : super(key: key);

  final double padding;
  final TextStyle textStyle;
  final num tipAmount;
  final num total;

  @override
  Widget build(BuildContext context) {
    final service = useGet<TipsService>();
    final device = useListenable(service.device);

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TipButton(value: 18),
              TipButton(value: 20),
              TipButton(value: 22),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Tip Amount",
                style: textStyle,
              ),
              Text(
                "\$ " + tipAmount.toStringAsFixed(2),
                style: textStyle,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Total",
              style: textStyle,
            ),
            Text(
              "\$ " + total.toStringAsFixed(2),
              style: textStyle,
            ),
          ],
        ),
        device.value.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          watch: () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TipsElevatedButton(
                child: const Text('Back'),
                onTap: () => service.handleKeyboardEvent(const KeyTapEvent.back()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
