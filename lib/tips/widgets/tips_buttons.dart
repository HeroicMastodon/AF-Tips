
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

import '../tips_service.dart';

typedef OnTap = void Function();

class TipsOutlinedButton extends HookWidget {
  const TipsOutlinedButton({Key? key, required this.child, required this.onTap})
      : super(key: key);

  final OnTap onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final service = useGet<TipsService>();
    final device = useListenable(service.device);
    final isWatch = device.value.when(mobile: () => false, watch: () => true);

    var shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(45.0),
    );

    var density = isWatch
        ? const VisualDensity(horizontal: -4, vertical: -3)
        : VisualDensity.standard;

    final outlinedStyle = OutlinedButton.styleFrom(
        shape: shape,
        visualDensity: density,
        side: BorderSide(color: Theme.of(context).colorScheme.primary));

    return OutlinedButton(
      onPressed: onTap,
      child: child,
      style: outlinedStyle,
    );
  }
}

class TipsElevatedButton extends HookWidget {
  const TipsElevatedButton({Key? key, required this.child, required this.onTap})
      : super(key: key);

  final OnTap onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final service = useGet<TipsService>();
    final device = useListenable(service.device);

    final isWatch = device.value.when(mobile: () => false, watch: () => true);

    var shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(45.0),
    );

    var density = isWatch
        ? const VisualDensity(horizontal: -4, vertical: -3)
        : VisualDensity.standard;

    final elevatedStyle =
    ElevatedButton.styleFrom(shape: shape, visualDensity: density);

    return ElevatedButton(
      onPressed: onTap,
      child: child,
      style: elevatedStyle,
    );
  }
}
