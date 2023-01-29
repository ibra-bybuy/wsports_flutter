import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:watch_sports/core/extensions/string.dart';
import 'avatar_file.dart';
import 'avatar_placeholder.dart';

class CachedCircleAvatar extends StatelessWidget {
  final String url;
  final double? avatarWidth;
  final double? avatarHeight;
  final String name;
  final Color backgroundColor;
  final Duration fadeInDuration;
  const CachedCircleAvatar({
    Key? key,
    required this.url,
    this.avatarWidth,
    this.avatarHeight,
    this.name = "",
    this.backgroundColor = Colors.orange,
    this.fadeInDuration = const Duration(milliseconds: 300),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (url.isUrl) {
      child = CachedNetworkImage(
        imageUrl: url,
        fadeInDuration: fadeInDuration,
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            AvatarPlaceholder(text: name, backgroundColor: backgroundColor),
        errorWidget: (context, url, error) {
          return AvatarPlaceholder(
            text: name,
            backgroundColor: backgroundColor,
          );
        },
        imageBuilder: (context, image) {
          return CircleAvatar(
            backgroundColor: backgroundColor,
            radius: 30,
            foregroundImage: image,
          );
        },
      );
    } else if (url.isNotEmpty) {
      child =
          AvatarFile(url: url, backgroundColor: backgroundColor, text: name);
    } else {
      child = AvatarPlaceholder(text: name, backgroundColor: backgroundColor);
    }

    return Stack(
      children: [
        SizedBox(width: avatarWidth, height: avatarHeight, child: child),
      ],
    );
  }
}
