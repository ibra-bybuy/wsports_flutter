import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/extensions/string.dart';

class AvatarPlaceholder extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  const AvatarPlaceholder(
      {Key? key, this.text = "", this.backgroundColor = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: backgroundColor,
      foregroundImage: null,
      child: GoogleText(
        text.cutName.toUpperCase(),
      ),
    );
  }
}
