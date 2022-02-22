import 'package:af_tips/tips/tips_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

class Amount extends HookWidget {
  const Amount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final service = useGet<TipsService>();
    final device = useListenable(service.device);
    final amount = useListenable(service.amount);

    final margin = device.value.when(
        watch: () => const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        mobile: () => const EdgeInsets.all(8));
    final padding = device.value.when(
      watch: () => const EdgeInsets.all(4),
      mobile: () => const EdgeInsets.all(8),
    );

    return Padding(
      padding: margin,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 2,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(45))),
        child: Padding(
          padding: padding,
          child: Text(
            '\$ ' + amount.value.amount,
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}
