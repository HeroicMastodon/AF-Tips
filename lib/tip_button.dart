import 'package:af_tips/tips_service.dart';
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

    final isSelected = useWatchOnly((TipsService service) {
      return service.tip == value;
    });

    pressHandler() => service.tip = value;

    final child = Text(value.toString() + '%');

    return isSelected
        ? ElevatedButton(onPressed: pressHandler, child: child)
        : OutlinedButton(onPressed: pressHandler, child: child);
  }
}
