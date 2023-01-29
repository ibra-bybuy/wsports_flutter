import 'dart:io';

import 'package:flutter/material.dart';
import 'package:watch_sports/core/extensions/string.dart';

class AvatarFile extends StatelessWidget {
  final String url;
  final Color backgroundColor;
  final String text;
  const AvatarFile({
    Key? key,
    this.url = "",
    this.text = "",
    this.backgroundColor = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: backgroundColor,
      foregroundImage: FileImage(File(url)),
      child: Text(
        text.cutName.toUpperCase(),
      ),
    );
  }
}
