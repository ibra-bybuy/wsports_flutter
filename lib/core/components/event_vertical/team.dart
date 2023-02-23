import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/size_config.dart';

import '../../../features/home/presentation/widgets/event_avatar.dart';
import '../../models/team.dart';

class EventVerticalCardTeam extends StatelessWidget {
  final Team team;
  final String? score;
  final bool showScore;
  const EventVerticalCardTeam(
    this.team, {
    super.key,
    this.score,
    this.showScore = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: SizeConfig(context, 25.0).getProportionateScreenWidth,
          height: SizeConfig(context, 25.0).getProportionateScreenWidth,
          child: EventAvatar(imageUrl: team.avatarUrl),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: GoogleText(
            team.name,
            color: Colors.black87,
            maxLines: 1,
          ),
        ),
        if (score?.isNotEmpty == true && showScore) ...[
          GoogleText(
            score!,
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
          const SizedBox(width: 17.0),
        ],
      ],
    );
  }
}
