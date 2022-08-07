import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'platform_plus_method_channel.dart';

abstract class PlatformPlusPlatform extends PlatformInterface {
  /// Constructs a PlatformPlusPlatform.
  PlatformPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static PlatformPlusPlatform _instance = MethodChannelPlatformPlus();

  /// The default instance of [PlatformPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelPlatformPlus].
  static PlatformPlusPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PlatformPlusPlatform] when
  /// they register themselves.
  static set instance(PlatformPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
