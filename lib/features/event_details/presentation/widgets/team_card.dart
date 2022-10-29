import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/size_config.dart';
import 'package:watch_sports/core/models/team.dart';

import '../../../home/presentation/widgets/event_avatar.dart';

class EventDetailsTeamCard extends StatelessWidget {
  final Team team;
  final Color? color;
  const EventDetailsTeamCard({
    super.key,
    required this.team,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final size = SizeConfig(context, 25.0)();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: size / 4,
          height: size,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(4.0),
              bottomRight: Radius.circular(4.0),
            ),
          ),
        ),
        const SizedBox(width: 15.0),
        EventAvatar(
          imageUrl: team.avatarUrl,
          fixedSize: size * 1.5,
        ),
        const SizedBox(width: 20.0),
        Expanded(
          child: GoogleText(
            team.name,
            maxLines: 1,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig(context, 18.0)(),
          ),
        ),
      ],
    );
  }
}
