import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_youmi/flutter_youmi.dart';
import 'package:flutter_youmi/flutter_youmi_platform_interface.dart';
import 'package:flutter_youmi/flutter_youmi_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterYoumiPlatform
    with MockPlatformInterfaceMixin
    implements FlutterYoumiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterYoumiPlatform initialPlatform = FlutterYoumiPlatform.instance;

  test('$MethodChannelFlutterYoumi is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterYoumi>());
  });

  test('getPlatformVersion', () async {
    FlutterYoumi flutterYoumiPlugin = FlutterYoumi();
    MockFlutterYoumiPlatform fakePlatform = MockFlutterYoumiPlatform();
    FlutterYoumiPlatform.instance = fakePlatform;

    expect(await flutterYoumiPlugin.getPlatformVersion(), '42');
  });
}
