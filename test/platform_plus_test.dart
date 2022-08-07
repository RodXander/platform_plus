import 'package:flutter_test/flutter_test.dart';
import 'package:platform_plus/platform_plus.dart';
import 'package:platform_plus/platform_plus_platform_interface.dart';
import 'package:platform_plus/platform_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlatformPlusPlatform 
    with MockPlatformInterfaceMixin
    implements PlatformPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PlatformPlusPlatform initialPlatform = PlatformPlusPlatform.instance;

  test('$MethodChannelPlatformPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlatformPlus>());
  });

  test('getPlatformVersion', () async {
    PlatformPlus platformPlusPlugin = PlatformPlus();
    MockPlatformPlusPlatform fakePlatform = MockPlatformPlusPlatform();
    PlatformPlusPlatform.instance = fakePlatform;
  
    expect(await platformPlusPlugin.getPlatformVersion(), '42');
  });
}
