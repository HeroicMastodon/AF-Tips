import 'package:af_tips/tips/tips_results.dart';
import 'package:af_tips/tips/tips_service.dart';
import 'package:af_tips/tips/widgets/keyboard/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

import 'amount.dart';
import 'widgets/tip_button.dart';

class Tips extends HookWidget {
  const Tips({Key? key, bool? isMobile = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final tipAmount = useWatchOnly((TipsService service) => service.tipAmount);
    // final total = useWatchOnly((TipsService service) => service.total);
    // final isWatch = useWatchOnly((TipsService service) => service.isWatch);
    final service = useGet<TipsService>();
    final amount = useListenable(service.amount);
    final device = useWatchOnly((TipsService service) => service.device);
    final page = service.page;
    final isWatch = device.value.when(mobile: () => false, watch: () => true);
    // final total

    var padding = 8.0;

    final textStyle =
        isWatch ? const TextStyle(fontSize: 16) : const TextStyle(fontSize: 24);

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: padding),
                child: const Amount(),
              ),
            ),
          ],
        ),
        page.value.when(
          entering: () => Expanded(
            child: Keyboard(
              tapHandler: (event) => service.handleKeyboardEvent(event),
            ),
          ),
          submitted: () => TipsResult(
            padding: padding,
            textStyle: textStyle,
            tipAmount: amount.value.tipAmount,
            total: amount.value.total,
          ),
        ),
      ],
    );
  }
}
