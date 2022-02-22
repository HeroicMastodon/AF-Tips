import 'package:af_tips/tips/tips_service.dart';
import 'package:af_tips/tips/widgets/keyboard/key_tap_event.dart';
import 'package:af_tips/tips/widgets/tips_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

import 'keyboard_key.dart';

class Keyboard extends HookWidget {
  const Keyboard({
    Key? key,
    required this.tapHandler,
  }) : super(key: key);

  final KeyTapHandler tapHandler;

  @override
  Widget build(BuildContext context) {
    var axisAlignment = MainAxisAlignment.spaceBetween;

    return Column(
      children: [
        Row(
          mainAxisAlignment: axisAlignment,
          children: [
            KeyboardKey(const KeyTapEvent.number('7'), tapHandler, '7'),
            KeyboardKey(const KeyTapEvent.number('8'), tapHandler, '8'),
            KeyboardKey(const KeyTapEvent.number('9'), tapHandler, '9'),
          ],
        ),
        Row(
          mainAxisAlignment: axisAlignment,
          children: [
            KeyboardKey(const KeyTapEvent.number('4'), tapHandler, '4'),
            KeyboardKey(const KeyTapEvent.number('5'), tapHandler, '5'),
            KeyboardKey(const KeyTapEvent.number('6'), tapHandler, '6'),
          ],
        ),
        Row(
          mainAxisAlignment: axisAlignment,
          children: [
            KeyboardKey(const KeyTapEvent.number('1'), tapHandler, '1'),
            KeyboardKey(const KeyTapEvent.number('2'), tapHandler, '2'),
            KeyboardKey(const KeyTapEvent.number('3'), tapHandler, '3'),
          ],
        ),
        Row(
          mainAxisAlignment: axisAlignment,
          children: [
            KeyboardKey(const KeyTapEvent.delete(), tapHandler, 'del'),
            KeyboardKey(const KeyTapEvent.number('0'), tapHandler, '0'),
            KeyboardKey(const KeyTapEvent.dot(), tapHandler, '.'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KeyboardKey(const KeyTapEvent.clear(), tapHandler, 'clear'),
              KeyboardKey(const KeyTapEvent.submit(), tapHandler, 'tip'),
            ],
          ),
        )
      ],
    );
  }
}
