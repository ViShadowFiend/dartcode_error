import 'visf_flutterx_platform_interface.dart';

export 'package:device_info_plus/device_info_plus.dart';
export 'package:visf_dartx/visf_dartx.dart';
export 'package:package_info_plus/package_info_plus.dart';
export 'package:permission_handler/permission_handler.dart';

class VisfFlutterx {
  Future<String?> getPlatformVersion() {
    return VisfFlutterxPlatform.instance.getPlatformVersion();
  }
}
