enum NotificationPermission { granted, denied, notDetermined }

abstract class LocalNotifications {
  Future<void> init();
  Future<NotificationPermission> requestPermission();

  Future<void> showProgress({
    String? title,
    String? body,
    required int progress,
  });
}
