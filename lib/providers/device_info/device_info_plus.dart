import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/extensions/string.dart';
import 'device_info_provider.dart';

@LazySingleton(as: DeviceInfoProvider)
class DeviceInfoPlus implements DeviceInfoProvider {
  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo? _androidInfo;
  IosDeviceInfo? _iosInfo;
  MacOsDeviceInfo? _macOsInfo;
  WebBrowserInfo? _webBrowserInfo;
  String? _deviceName;

  @override
  Future<String> deviceName() async {
    if (_deviceName != null) {
      return _deviceName!;
    }

    await _loadCurrentPlatform();

    return _deviceName ?? "";
  }

  Future<void> _loadCurrentPlatform() async {
    if (kIsWeb) {
      _webBrowserInfo = await _deviceInfo.webBrowserInfo;
      _deviceName = _webBrowserInfo?.userAgent;
    }

    if (Platform.isAndroid) {
      _androidInfo = await _deviceInfo.androidInfo;
      _deviceName = _androidInfo?.model;
    }

    if (Platform.isIOS) {
      _iosInfo = await _deviceInfo.iosInfo;
      _deviceName = _iosInfo?.name;
    }

    if (Platform.isMacOS) {
      _macOsInfo = await _deviceInfo.macOsInfo;
      _deviceName = _macOsInfo?.model.leaveOnlyEng;
    }
  }
}
