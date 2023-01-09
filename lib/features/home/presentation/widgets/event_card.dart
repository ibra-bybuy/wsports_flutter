import 'package:flutter/material.dart';
import 'package:watch_sports/core/models/event.dart';
import 'package:watch_sports/features/home/presentation/widgets/event_info.dart';

import 'event_team.dart';

class EventCard extends StatelessWidget {
  final Event event;
  final void Function()? onTap;
  final Color? teamsColor;
  final Widget? infoWidget;
  final CrossAxisAlignment rowCrossAxisAlignment;
  final Color? cardColor;
  final BoxBorder? border;
  const EventCard({
    super.key,
    required this.event,
    this.onTap,
    this.teamsColor,
    this.infoWidget,
    this.rowCrossAxisAlignment = CrossAxisAlignment.start,
    this.cardColor,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: border ??
                Border.all(
                  color: const Color(0XFFE4E5E5),
                ),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            color: cardColor,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            child: Row(
              crossAxisAlignment: rowCrossAxisAlignment,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (event.teams.isNotEmpty) ...[
                  Flexible(
                    flex: 4,
                    child: EventTeamCard(
                      title: event.teams.first.name,
                      imageUrl: event.teams.first.avatarUrl,
                      titleColor: teamsColor,
                    ),
                  ),
                ],
                const SizedBox(width: 15.0),
                Flexible(
                  flex: 4,
                  child: infoWidget ??
                      EventInfo(
                        eventName: event.name,
                        eventTime: event.startTimeDateTime,
                        isLive: event.isLive,
                        isFinished: event.isFinished,
                      ),
                ),
                const SizedBox(width: 15.0),
                if (event.teams.isNotEmpty) ...[
                  Flexible(
                    flex: 4,
                    child: EventTeamCard(
                      title: event.teams.last.name,
                      imageUrl: event.teams.last.avatarUrl,
                      titleColor: teamsColor,
                    ),
                  )
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
