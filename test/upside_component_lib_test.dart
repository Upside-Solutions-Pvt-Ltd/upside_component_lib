import 'package:flutter_test/flutter_test.dart';
import 'package:upside_component_lib/upside_component_lib.dart';
import 'package:upside_component_lib/upside_component_lib_platform_interface.dart';
import 'package:upside_component_lib/upside_component_lib_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUpsideComponentLibPlatform
    with MockPlatformInterfaceMixin
    implements UpsideComponentLibPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final UpsideComponentLibPlatform initialPlatform = UpsideComponentLibPlatform.instance;

  test('$MethodChannelUpsideComponentLib is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUpsideComponentLib>());
  });

  test('getPlatformVersion', () async {
    UpsideComponentLib upsideComponentLibPlugin = UpsideComponentLib();
    MockUpsideComponentLibPlatform fakePlatform = MockUpsideComponentLibPlatform();
    UpsideComponentLibPlatform.instance = fakePlatform;

    expect(await upsideComponentLibPlugin.getPlatformVersion(), '42');
  });
}
