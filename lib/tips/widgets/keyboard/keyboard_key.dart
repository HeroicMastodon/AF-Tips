import 'package:af_tips/tips/tips_service.dart';
import 'package:af_tips/tips/widgets/keyboard/key_tap_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

typedef KeyTapHandler = void Function(KeyTapEvent event);

class KeyboardKey extends HookWidget {
  const KeyboardKey(
    this.event,
    this.handler,
    this.displayValue, {
    Key? key,
  }) : super(key: key);

  final KeyTapEvent event;
  final KeyTapHandler handler;
  final String displayValue;

  @override
  Widget build(BuildContext context) {
    final service = useGet<TipsService>();
    final device = useListenable(service.device);

    final visualDensity = device.value.when(
      mobile: () => VisualDensity.standard,
      watch: () => const VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity),
    );

    final textStyle = device.value.when(
      mobile: () => const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      watch: () => const TextStyle(fontWeight: FontWeight.bold),
    );

    final sizeBoxSize = device.value.when(
      mobile: () => 48.0,
      watch: () => 24.0,
    );

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
        child: SizedBox(
          width: sizeBoxSize,
          height: sizeBoxSize,
          child: TextButton(
            style: ButtonStyle(
              visualDensity: visualDensity,
            ),
            onPressed: () => handler(event),
            child: Text(
              displayValue,
              style: textStyle,
            ),
            // style: OutlinedButton.styleFrom(
            //   visualDensity: VisualDensity.compact,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(45.0),
            //   ),
            //   // visualDensity: density,
            //   side: BorderSide(
            //     color: Theme.of(context).colorScheme.primary,
            //   ),
            //   // fixedSize: Size.fromWidth(buttonWidth)
            // ),
          ),
        ),
        // child: GestureDetector(
        //   onTap: () => handler(event),
        //   child: Text(displayValue),
        // ),
      ),
    );
  }
}
