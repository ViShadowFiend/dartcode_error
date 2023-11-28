import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget with WidgetsBindingObserver {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      color: Colors.green,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("test"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("1"),
              Text("2"),
              Text("3"),
              Text('3'),
              Text('4'),
              Text("5"),
              Text('6'),
              Text("7"),
              Text('8'),
              Text('9'),
              Text("10"),
            ],
          ),
        ),
      ),
    );
  }
}
