import '../models/app_version.dart';

extension AppVersionListExt on List<AppVersion> {
  AppVersion? get getTheNewest {
    sort((a, b) => b.versionCode.compareTo(a.versionCode));
    return isNotEmpty ? first : null;
  }
}
