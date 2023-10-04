import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

// Unable to edit document because the file was not previously opened: D:\coding\socketerror\lib_ble\example\lib\main.dart

// Socket error: Concurrent modification during iteration: _Map len:2.

// An unrecoverable error occurred and the server cannot process messages
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
}
