import 'package:injectable/injectable.dart';
import 'package:watch_sports/providers/package_info/package_info.dart';
import 'package:package_info_plus/package_info_plus.dart' as package_info_plus;

@LazySingleton(as: PackageInfo)
class PackageInfoPlusImpl implements PackageInfo {
  package_info_plus.PackageInfo? packageInfo;

  @override
  Future<void> init() async {
    packageInfo ??= await package_info_plus.PackageInfo.fromPlatform();
  }

  @override
  String get appName {
    return packageInfo?.appName ?? "";
  }

  @override
  num get buildNumber {
    return num.tryParse(packageInfo?.buildNumber ?? "0") ?? 0;
  }

  @override
  String get packageName {
    return packageInfo?.packageName ?? "";
  }

  @override
  String get version {
    return packageInfo?.version ?? "";
  }
}
