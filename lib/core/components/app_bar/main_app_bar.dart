import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> children;
  final bool? centerTitle;
  const MainAppBar({
    super.key,
    this.children = const [],
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      iconTheme: IconThemeData(
        color: Theme.of(context).iconTheme.color,
      ),
      elevation: 0.0,
      toolbarHeight: preferredSize.height,
      centerTitle: centerTitle,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.2);
}
