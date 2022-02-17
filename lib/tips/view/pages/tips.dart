import 'package:af_tips/tips_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

import '../widgets/amount.dart';
import '../widgets/tip_button.dart';

class Tips extends HookWidget {
  const Tips({Key? key, bool? isMobile = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tipAmount = useWatchOnly((TipsService service) => service.tipAmount);
    final total = useWatchOnly((TipsService service) => service.total);
    final isWatch = useWatchOnly((TipsService service) => service.isWatch);
    final service = useGet<TipsService>();

    var padding = 8.0;

    final textStyle = isWatch
        ? TextStyle(fontSize: 16)
        : TextStyle(fontSize: 24);

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: padding),
          child: Amount(),
        ),
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
              Text("Tip Amount", style: textStyle,),
              Text("\$ " + tipAmount.toStringAsFixed(2), style: textStyle,),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Total", style: textStyle,),
            Text("\$ " + total.toStringAsFixed(2), style: textStyle,),
          ],
        ),
      ],
    );
  }
}
