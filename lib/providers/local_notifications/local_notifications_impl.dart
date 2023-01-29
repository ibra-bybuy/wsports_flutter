import 'dart:async';
import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/providers/local_notifications/local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

@LazySingleton(as: LocalNotifications)
class LocalNotificationsImpl implements LocalNotifications {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final List<Function(bool)> _notificationPermissionListeners = [];

  final List<Function(String)> _clickListeners = [];

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
      macOS: initializationSettingsDarwin,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (response) {
        _onNotificationClicked(response);
      },
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
    );

    final notificationAppLaunchDetails = await _flutterLocalNotificationsPlugin
        .getNotificationAppLaunchDetails();
    if (notificationAppLaunchDetails?.notificationResponse != null &&
        notificationAppLaunchDetails!.didNotificationLaunchApp) {
      Future.delayed(
        const Duration(seconds: 1),
        () {
          _onNotificationClicked(
              notificationAppLaunchDetails.notificationResponse!);
        },
      );
    }
  }

  @override
  Future<void> cancel(int id) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
  }

  @override
  Future<NotificationPermission> requestPermission() async {
    bool permissions = false;

    if (Platform.isAndroid) {
      permissions = await _requestAndroidPermission();
    } else if (Platform.isIOS) {
      permissions = await _requestIosPermission();
    }

    _notificationPermissionHandler(permissions);

    switch (permissions) {
      case true:
        return NotificationPermission.granted;
      case false:
        return NotificationPermission.denied;
    }

    return NotificationPermission.notDetermined;
  }

  Future<bool> _requestAndroidPermission() async {
    try {
      return await _flutterLocalNotificationsPlugin
              .resolvePlatformSpecificImplementation<
                  AndroidFlutterLocalNotificationsPlugin>()
              ?.requestPermission() ??
          false;
    } catch (_) {
      return false;
    }
  }

  Future<bool> _requestIosPermission() async {
    try {
      return await _flutterLocalNotificationsPlugin
              .resolvePlatformSpecificImplementation<
                  IOSFlutterLocalNotificationsPlugin>()
              ?.requestPermissions(
                alert: true,
                badge: true,
                sound: true,
              ) ??
          false;
    } catch (_) {
      return false;
    }
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

  NotificationDetails notificationDetails() {
    final androidPlatformChannelSpecifics = androidNotificationDetails();
    const iOSPlatformChannelSpecifics = DarwinNotificationDetails();
    final platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );
    return platformChannelSpecifics;
  }

  AndroidNotificationDetails androidNotificationProgressDetails({
    required int progress,
  }) {
    return AndroidNotificationDetails(
      'progress_channel',
      'App update',
      channelShowBadge: false,
      importance: Importance.max,
      priority: Priority.high,
      onlyAlertOnce: true,
      showProgress: true,
      maxProgress: 100,
      progress: progress,
    );
  }

  @override
  Future<void> scheduledNotification({
    required int id,
    String title = "",
    String body = "",
    required Duration duration,
    String? payload,
  }) async {
    await _flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.now(tz.local).add(duration),
      notificationDetails(),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
      payload: payload,
    );
  }

  AndroidNotificationDetails androidNotificationDetails() {
    return const AndroidNotificationDetails(
      'notification_channel',
      'Global notifications',
      channelShowBadge: false,
      importance: Importance.max,
      priority: Priority.high,
    );
  }

  void _onNotificationClicked(NotificationResponse response) {
    if (_clickListeners.isNotEmpty && response.payload != null) {
      for (final fn in _clickListeners) {
        fn.call(response.payload!);
      }
    }
  }

  @override
  void listenNotification(void Function(String payload) callback) {
    _clickListeners.add(callback);
  }

  @override
  void listenToPermission(void Function(bool payload) callback) {
    _notificationPermissionListeners.add(callback);
  }

  void _notificationPermissionHandler(bool result) {
    for (final fn in _notificationPermissionListeners) {
      fn.call(result);
    }
  }
}

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  // handle action
}
