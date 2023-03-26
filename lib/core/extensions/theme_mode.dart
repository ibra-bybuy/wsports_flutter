import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:watch_sports/i18n/i18n.dart';

extension ThemeModeExt on ThemeMode {
  String get localizedName {
    if (isDarkMode) {
      return localizationInstance.dark;
    }
    return localizationInstance.light;
  }

  bool get isDarkMode {
    if (this == ThemeMode.system) {
      final brightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;
      return brightness == Brightness.dark;
    }
    return this == ThemeMode.dark;
  }
}
