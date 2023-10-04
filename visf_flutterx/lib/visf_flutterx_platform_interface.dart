import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'visf_flutterx_method_channel.dart';

abstract class VisfFlutterxPlatform extends PlatformInterface {
  /// Constructs a VisfFlutterxPlatform.
  VisfFlutterxPlatform() : super(token: _token);

  static final Object _token = Object();

  static VisfFlutterxPlatform _instance = MethodChannelVisfFlutterx();

  /// The default instance of [VisfFlutterxPlatform] to use.
  ///
  /// Defaults to [MethodChannelVisfFlutterx].
  static VisfFlutterxPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VisfFlutterxPlatform] when
  /// they register themselves.
  static set instance(VisfFlutterxPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
