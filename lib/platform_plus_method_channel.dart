import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'platform_plus_platform_interface.dart';

/// An implementation of [PlatformPlusPlatform] that uses method channels.
class MethodChannelPlatformPlus extends PlatformPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('platform_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
