import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_youmi_method_channel.dart';

abstract class FlutterYoumiPlatform extends PlatformInterface {
  /// Constructs a FlutterYoumiPlatform.
  FlutterYoumiPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterYoumiPlatform _instance = MethodChannelFlutterYoumi();

  /// The default instance of [FlutterYoumiPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterYoumi].
  static FlutterYoumiPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterYoumiPlatform] when
  /// they register themselves.
  static set instance(FlutterYoumiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> init(String aid) {
    throw UnimplementedError('init() has not been implemented.');
  }

  Future<bool?> startOffersWall(String userId) {
    throw UnimplementedError('startOffersWall() has not been implemented.');
  }
}
