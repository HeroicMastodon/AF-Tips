import 'package:af_tips/tips/tips_results.dart';
import 'package:af_tips/tips_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

import 'amount.dart';
import 'tip_button.dart';

class Tips extends HookWidget {
  const Tips({Key? key, bool? isMobile = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tipAmount = useWatchOnly((TipsService service) => service.tipAmount);
    final total = useWatchOnly((TipsService service) => service.total);
    final isWatch = useWatchOnly((TipsService service) => service.isWatch);
    final service = useGet<TipsService>();

    var padding = 8.0;

    final textStyle =
        isWatch ? TextStyle(fontSize: 16) : TextStyle(fontSize: 24);

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: padding),
          child: Amount(),
        ),
        TipsResult(
          padding: padding,
          textStyle: textStyle,
          tipAmount: tipAmount,
          total: total,
        ),
      ],
    );
  }
}