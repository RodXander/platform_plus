import 'dart:io';

import 'package:flutter/services.dart';

class PlatformPlus {
  static const methodChannel = MethodChannel('com.rodxander.platform_plus');

  PlatformPlus._();

  static Future<PlatformPlus> getInstance() async {
    if (Platform.isAndroid) {
      _platformPlus.androidSdkNumber = await methodChannel.invokeMethod('getAndroidSdkNumber');
    }
    return _platformPlus;
  }

  static final PlatformPlus _platformPlus = PlatformPlus._();

  late int androidSdkNumber;
}
