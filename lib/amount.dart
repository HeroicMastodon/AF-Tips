import 'package:af_tips/tips_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

class Amount extends HookWidget {
  Amount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final service = useGet<TipsService>();

    return TextField(
      keyboardType: TextInputType.number,
      textAlign: TextAlign.right,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[\d]+[.]{0,1}[\d]*'))
      ],
      onChanged: (value) async {
        var val = num.tryParse(value);
        service.amount = val ?? 0;
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder()
      ),
    );
  }
}
