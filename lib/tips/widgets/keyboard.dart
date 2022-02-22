import 'package:af_tips/tips/widgets/tips_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'keyboard_key.dart';

class Keyboard extends HookWidget {
  const Keyboard(
      {Key? key,
      required this.tapHandler,
      required this.onClear,
      required this.onDelete,
      required this.onTip})
      : super(key: key);

  final KeyTapHandler tapHandler;
  final OnTap onClear;
  final OnTap onDelete;
  final OnTap onTip;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            KeyboardKey('7', tapHandler),
            KeyboardKey('8', tapHandler),
            KeyboardKey('9', tapHandler),
          ],
        ),
        Row(
          children: [
            KeyboardKey('4', tapHandler),
            KeyboardKey('5', tapHandler),
            KeyboardKey('6', tapHandler),
          ],
        ),
        Row(
          children: [
            KeyboardKey('1', tapHandler),
            KeyboardKey('2', tapHandler),
            KeyboardKey('3', tapHandler),
          ],
        ),
        Row(
          children: [
            KeyboardKey('Clear', <String>(value) {
              onClear();
            }),
            KeyboardKey('Delete', <String>(value) {
              onDelete();
            }),
            KeyboardKey('Tip', <String>(value) {
              onTip();
            }),
          ],
        )
      ],
    );
  }
}
