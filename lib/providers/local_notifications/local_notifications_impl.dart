import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/providers/local_notifications/local_notifications.dart';

@LazySingleton(as: LocalNotifications)
class LocalNotificationsImpl implements LocalNotifications {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  Future<void> init() async {
    await requestPermission();

    const initializationSettingsAndroid =
        AndroidInitializationSettings('notification_icon');

    const initializationSettingsDarwin = DarwinInitializationSettings();
    const initializationSettingsLinux = LinuxInitializationSettings(
      defaultActionName: "Open notifications",
    );

    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
      linux: initializationSettingsLinux,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (response) {},
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
    );
  }

  @override
  Future<NotificationPermission> requestPermission() async {
    final request = await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();

    switch (request) {
      case true:
        return NotificationPermission.granted;
      case false:
        return NotificationPermission.denied;
    }

    return NotificationPermission.notDetermined;
  }

  @override
  Future<void> showProgress({
    String? title,
    String? body,
    required int progress,
  }) async {
    final androidPlatformChannelSpecifics =
        androidNotificationProgressDetails(progress: progress);
    const iOSPlatformChannelSpecifics = DarwinNotificationDetails();
    final platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    if (progress == 100) {
      await _flutterLocalNotificationsPlugin.cancel(0);
    } else {
      await _flutterLocalNotificationsPlugin.show(
        0,
        title,
        body,
        platformChannelSpecifics,
      );
    }
  }

  AndroidNotificationDetails androidNotificationProgressDetails({
    required int progress,
  }) {
    return AndroidNotificationDetails(
      'progress channel',
      'progress channel',
      channelShowBadge: false,
      importance: Importance.max,
      priority: Priority.high,
      onlyAlertOnce: true,
      showProgress: true,
      maxProgress: 100,
      progress: progress,
    );
  }
}

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  // handle action
}
