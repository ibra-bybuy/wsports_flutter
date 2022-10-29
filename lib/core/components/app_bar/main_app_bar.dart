import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/app_bar/search_app_bar.dart';
import 'package:watch_sports/core/components/app_bar/welcome_card.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      toolbarHeight: preferredSize.height,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 15.0),
          AppBarWelcomeCard(),
          SizedBox(height: 20.0),
          SearchAppBar(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2.5);
}
