import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

void test() {
  final a = Text("1");
  final b = Text("2");
  final c = Text("3");
  final d = Text("4");
  final e = Text("5");
  final f = Text("6");
  final g = Text("7");
  final h = Text("8");
  final i = Text('9');
  final j = Text("10");
  final k = Text("11");
  final l = Text("12");
}
