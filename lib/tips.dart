import 'package:af_tips/tips_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

import 'amount.dart';
import 'tip_button.dart';

class Tips extends HookWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tipAmount = useWatchOnly((TipsService service) => service.tipAmount);
    final total = useWatchOnly((TipsService service) => service.total);

    return Column(
      children: [
        Amount(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            TipButton(value: 18),
            TipButton(value: 20),
            TipButton(value: 22),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Tip Amount"),
            Text(tipAmount.toStringAsFixed(2))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Total"),
            Text(total.toStringAsFixed(2))
          ],
        ),
      ],
    );
  }
}





