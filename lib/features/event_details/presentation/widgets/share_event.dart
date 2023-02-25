import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareEventIcon extends StatelessWidget {
  final String title;
  const ShareEventIcon(
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Share.share(
          title,
        );
      },
      icon: const Icon(Icons.share),
    );
  }
}
