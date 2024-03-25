import 'package:package_info_plus/package_info_plus.dart';

import 'iapp_info_service.dart';

class AppInfoService implements IAppInfoService {
  @override
  Future<String> appVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
