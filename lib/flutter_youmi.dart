import 'flutter_youmi_platform_interface.dart';

class FlutterYoumi {
  Future<String?> getPlatformVersion() {
    return FlutterYoumiPlatform.instance.getPlatformVersion();
  }

  Future<bool?> init(String aid) {
    return FlutterYoumiPlatform.instance.init(aid);
  }

  Future<bool?> startOffersWall(String userId) {
    return FlutterYoumiPlatform.instance.startOffersWall(userId);
  }
}
