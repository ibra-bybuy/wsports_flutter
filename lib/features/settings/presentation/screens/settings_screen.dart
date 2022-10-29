import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/app_bar/bright_app_color.dart';
import 'package:watch_sports/i18n/i18n.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final strings = localizationInstance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BrightAppBar(title: strings.settings),
      body: const SizedBox(),
    );
  }
}
