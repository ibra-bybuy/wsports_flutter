import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/app_bar/search_app_bar.dart';
import 'package:watch_sports/core/components/app_bar/settings_btn.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../../functions/size_config.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  const MainAppBar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final strings = localizationInstance;
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      toolbarHeight: preferredSize.height,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15.0),
          GoogleText(
            "${strings.hello},",
            color: const Color(0XFF000000),
            fontSize: SizeConfig(context, 14.0)(),
          ),
          GoogleText(
            name.toUpperCase(),
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: SizeConfig(context, 19.0)(),
          ),
          const SizedBox(height: 20.0),
          const SearchAppBar(),
        ],
      ),
      actions: const [
        AppBarSettingsBtn(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2.5);
}
