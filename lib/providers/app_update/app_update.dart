enum AppUpdateStatus {
  installing,
  downloading,
  downloaded,
  error,
  permissionNotGranted
}

abstract class AppUpdate {
  void update({
    required String url,
    void Function(AppUpdateStatus, int)? listener,
    void Function(Object)? onException,
  });
}
