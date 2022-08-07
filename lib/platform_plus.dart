
import 'platform_plus_platform_interface.dart';

class PlatformPlus {
  Future<String?> getPlatformVersion() {
    return PlatformPlusPlatform.instance.getPlatformVersion();
  }
}
