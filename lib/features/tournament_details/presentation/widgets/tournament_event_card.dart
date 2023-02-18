import 'package:flutter/material.dart';
import 'package:watch_sports/core/functions/size_config.dart';

import '../../../../core/components/text/google_text.dart';
import '../../../../core/models/event.dart';
import '../../../home/presentation/widgets/event_card.dart';

class TournamentEventCard extends StatelessWidget {
  final Event event;
  const TournamentEventCard(this.event, {super.key});

  @override
  Widget build(BuildContext context) {
    return EventCard(
      event: event,
      teamsColor: Colors.white,
      border: Border.all(
        color: Colors.white.withOpacity(0.3),
      ),
      rowCrossAxisAlignment: CrossAxisAlignment.center,
      infoWidget: GoogleText(
        "VS",
        color: Colors.red,
        fontSize: SizeConfig(context, 30.0)(),
        fontStyle: FontStyle.italic,
      ),
      openTeams: true,
    );
  }
}
