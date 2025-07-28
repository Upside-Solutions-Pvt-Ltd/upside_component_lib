import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'upside_component_lib_platform_interface.dart';

/// An implementation of [UpsideComponentLibPlatform] that uses method channels.
class MethodChannelUpsideComponentLib extends UpsideComponentLibPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('upside_component_lib');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
