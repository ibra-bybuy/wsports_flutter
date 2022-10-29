import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';

import 'event_avatar.dart';

class EventTeamCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  const EventTeamCard({
    super.key,
    this.imageUrl = "",
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EventAvatar(imageUrl: imageUrl),
        const SizedBox(height: 15.0),
        GoogleText(
          title,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
