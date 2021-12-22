import 'package:af_tips/setup.dart';
import 'package:af_tips/tips.dart';
import 'package:af_tips/tips_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

    if (!kIsWeb) {
      final size = MediaQuery.of(context).size;

      service.isWatch = size.longestSide < 300 ? true : false;
    }

    final insets = service.isWatch ? 8.0 : 16.0;
    var appBar = AppBar(
      title: Container(
        child: Text(title),
        alignment: service.isWatch ? Alignment.center : Alignment.topLeft,
      ),
    );
    return Scaffold(
      appBar: service.isWatch
          ? PreferredSize(
              preferredSize: const Size.fromHeight(32.0),
              child: appBar,
            )
          : appBar,
      body: Padding(
        padding: EdgeInsets.all(insets),
        child: const Center(child: Tips()),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: const Center(
//         child: Tips()
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: const Icon(Icons.add),
//       // ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
