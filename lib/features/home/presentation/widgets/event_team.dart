import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'event_avatar.dart';

class EventTeamCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final Color? titleColor;
  const EventTeamCard({
    super.key,
    this.imageUrl = "",
    this.title = "",
    this.titleColor,
  });

  @override
  State<EventTeamCard> createState() => _EventTeamCardState();
}

class _EventTeamCardState extends State<EventTeamCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EventAvatar(imageUrl: widget.imageUrl),
        const SizedBox(height: 15.0),
        GoogleText(
          widget.title,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          color: widget.titleColor,
        )
      ],
    );
  }
}
