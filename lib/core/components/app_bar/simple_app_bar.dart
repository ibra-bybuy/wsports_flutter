import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watch_sports/core/components/app_bar/leading_back.dart';
import 'package:watch_sports/core/components/text/google_text.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? backgroundColor;
  final Color? shadowColor;
  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final Color? titleColor;
  final Color? leadingColor;
  const SimpleAppBar({
    super.key,
    required this.title,
    this.backgroundColor = const Color(0XFF000000),
    this.shadowColor = Colors.red,
    this.systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
    this.titleColor = Colors.white,
    this.leadingColor = const Color(0XFFC4C4C4),
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: backgroundColor,
      shadowColor: shadowColor,
      systemOverlayStyle: systemUiOverlayStyle,
      leading: Navigator.of(context).canPop()
          ? AppBarLeadingBackBtn(color: leadingColor)
          : null,
      title: GoogleText(
        title,
        color: titleColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
