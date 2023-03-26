import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:watch_sports/core/components/settings/settings_wrapper.dart';

import '../../../../core/components/app_bar/main_app_bar.dart';
import '../../../../core/components/text/google_text.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  final String title;
  final List<SettingsItem> items;
  final void Function(BuildContext context, String code)? onTap;
  const SettingsScreen({
    super.key,
    required this.title,
    required this.items,
    this.onTap,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      appBar: MainAppBar(
        centerTitle: true,
        children: [
          GoogleText(
            widget.title,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SettingsWrapper(sections: [
              SettingsSection(
                  tiles: widget.items.map((e) {
                return SettingsTile.navigation(
                  onPressed: (context) {
                    widget.onTap?.call(context, e.code);
                  },
                  title: Text(e.value),
                );
              }).toList())
            ])
          ],
        ),
      ),
    );
  }
}

class SettingsItem {
  final String code;
  final String value;

  const SettingsItem(this.code, this.value);
}
