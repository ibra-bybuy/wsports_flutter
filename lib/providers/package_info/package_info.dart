abstract class PackageInfo {
  Future<void> init();
  String get version;
  num get buildNumber;
  String get packageName;
  String get appName;
}
