import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'visf_flutterx_platform_interface.dart';

/// An implementation of [VisfFlutterxPlatform] that uses method channels.
class MethodChannelVisfFlutterx extends VisfFlutterxPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('visf_flutterx');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
