
import 'upside_component_lib_platform_interface.dart';

class UpsideComponentLib {
  Future<String?> getPlatformVersion() {
    return UpsideComponentLibPlatform.instance.getPlatformVersion();
  }
}
