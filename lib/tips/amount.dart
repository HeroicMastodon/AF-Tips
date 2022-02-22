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
    final device = useWatchOnly((TipsService service) => service.device);
    // final isWatch = useWatchOnly((TipsService service) => service.isWatch);
    final isWatch = device.value.when(mobile: () => false, watch: () => true);

    var textField = TextField(
      keyboardType: isWatch ? TextInputType.text : TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[\d]+[.]{0,1}[\d]*'))
      ],
      onChanged: (value) async {
        var val = num.tryParse(value);
        // service.amount = val ?? 0;
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(100, 100))),
        isDense: true,
        prefix: Text("\$")
      ),
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: isWatch ? 16 : 24),
    );

    return isWatch
        ? SizedBox(
            height: 24,
            width: 108,
            child: textField,
          )
        : textField;
  }
}
