import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef KeyTapHandler = void Function<T>(T key);

class KeyboardKey extends HookWidget {
  const KeyboardKey(
      this.value,
      this.handler, {
        Key? key,
      }) : super(key: key);

  final String value;
  final KeyTapHandler handler;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: OutlinedButton(
        onPressed: () => handler(value),
        child: Text(
          value,
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45.0),
          ),
          // visualDensity: density,
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
