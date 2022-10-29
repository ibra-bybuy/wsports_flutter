import 'package:flutter/material.dart';
import 'simple_app_bar.dart';

class BrightAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const BrightAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleAppBar(
      title: title,
      backgroundColor: Colors.white,
      shadowColor: null,
      systemUiOverlayStyle: null,
      titleColor: Colors.black,
      leadingColor: Colors.black,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
