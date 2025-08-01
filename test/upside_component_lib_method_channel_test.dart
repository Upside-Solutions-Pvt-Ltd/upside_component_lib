import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:upside_component_lib/upside_component_lib_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelUpsideComponentLib platform = MethodChannelUpsideComponentLib();
  const MethodChannel channel = MethodChannel('upside_component_lib');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
