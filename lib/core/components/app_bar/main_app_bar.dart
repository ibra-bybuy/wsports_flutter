import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/app_bar/welcome_card.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> children;
  const MainAppBar({
    super.key,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      elevation: 0.0,
      toolbarHeight: preferredSize.height,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children.isNotEmpty
            ? children
            : const [
                SizedBox(height: 15.0),
                AppBarWelcomeCard(),
              ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.5);
}
