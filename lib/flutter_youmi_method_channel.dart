import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_youmi_platform_interface.dart';

/// An implementation of [FlutterYoumiPlatform] that uses method channels.
class MethodChannelFlutterYoumi extends FlutterYoumiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_youmi');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool?> init(String aid) async {
    final result = await methodChannel.invokeMethod<bool>('init',aid);
    return result;
  }

  @override
  Future<bool?> startOffersWall(String userId) async {
    final result = await methodChannel.invokeMethod<bool>('startOffersWall',userId);
    return result;
  }
}
