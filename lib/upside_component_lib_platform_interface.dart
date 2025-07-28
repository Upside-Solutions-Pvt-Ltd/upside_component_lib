import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'upside_component_lib_method_channel.dart';

abstract class UpsideComponentLibPlatform extends PlatformInterface {
  /// Constructs a UpsideComponentLibPlatform.
  UpsideComponentLibPlatform() : super(token: _token);

  static final Object _token = Object();

  static UpsideComponentLibPlatform _instance = MethodChannelUpsideComponentLib();

  /// The default instance of [UpsideComponentLibPlatform] to use.
  ///
  /// Defaults to [MethodChannelUpsideComponentLib].
  static UpsideComponentLibPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UpsideComponentLibPlatform] when
  /// they register themselves.
  static set instance(UpsideComponentLibPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
