import 'package:af_tips/setup.dart';
import 'package:af_tips/tips/tips_page.dart';
import 'package:af_tips/tips/tips_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tips',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(color: Colors.blue),
          brightness: Brightness.dark),
      home: const MyHomePage(title: 'Tips'),
    );
  }
}

class MyHomePage extends HookWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final service = useGet<TipsService>();
    final device = useListenable(service.device);

    service.setDeviceState(MediaQuery.of(context));

    final insets = device.value.when(mobile: () => 16.0, watch: () => 8.0);
    var appBar = AppBar(
      title: Container(
        child: Text(title),
        alignment: device.value.when(
          mobile: () => Alignment.topLeft,
          watch: () => Alignment.center,
        ),
      ),
    );

    return Scaffold(
      appBar: device.value.when(
        mobile: () => appBar,
        watch: () => PreferredSize(
          child: appBar,
          preferredSize: const Size.fromHeight(32),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(insets),
        child: const Center(child: Tips()),
      ),
    );
  }
}
