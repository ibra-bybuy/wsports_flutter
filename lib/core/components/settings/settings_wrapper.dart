import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsWrapper extends StatelessWidget {
  final List<AbstractSettingsSection> sections;
  const SettingsWrapper({super.key, required this.sections});

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      platform: DevicePlatform.android,
      shrinkWrap: true,
      applicationType: ApplicationType.material,
      lightTheme: const SettingsThemeData(
        settingsListBackground: Colors.white,
      ),
      sections: sections,
    );
  }
}
