enum NotificationPermission { granted, denied, notDetermined }

abstract class LocalNotifications {
  Future<void> init();
  Future<NotificationPermission> requestPermission();

  Future<void> showProgress({
    String? title,
    String? body,
    required int progress,
  });

  Future<void> scheduledNotification({
    required int id,
    String title = "",
    String body = "",
    required Duration duration,
    String? payload,
  });

  void listenNotification(void Function(String payload) callback);

  Future<void> cancel(int id);
}
