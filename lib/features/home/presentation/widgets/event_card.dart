import 'package:flutter/material.dart';
import 'package:watch_sports/core/models/event.dart';
import 'package:watch_sports/features/home/presentation/widgets/event_info.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../../core/models/team.dart';
import '../../../../setup.dart';
import 'event_team.dart';

class EventCard extends StatefulWidget {
  final Event event;
  final void Function()? onTap;
  final Color? teamsColor;
  final Widget? infoWidget;
  final CrossAxisAlignment rowCrossAxisAlignment;
  final Color? cardColor;
  final BoxBorder? border;
  final bool openTeams;
  const EventCard({
    super.key,
    required this.event,
    this.onTap,
    this.teamsColor,
    this.infoWidget,
    this.rowCrossAxisAlignment = CrossAxisAlignment.start,
    this.cardColor,
    this.border,
    this.openTeams = false,
  });

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  void openTeam(Team team, Team opponent, String title) {
    if (widget.event.isMma) {
      getIt<AppRouter>()
          .push(FighterRoute(item: team, opponent: opponent, title: title));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            border: widget.border ??
                Border.all(
                  color: Theme.of(context).dividerColor,
                ),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            color: widget.cardColor,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            child: Row(
              crossAxisAlignment: widget.rowCrossAxisAlignment,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget.event.localizedTeams.isNotEmpty) ...[
                  Flexible(
                    flex: 4,
                    child: InkWell(
                      onTap: widget.openTeams
                          ? () => openTeam(
                                widget.event.engTeams.first,
                                widget.event.engTeams.last,
                                widget.event.localizedTeams.first.name,
                              )
                          : null,
                      child: EventTeamCard(
                        title: widget.event.localizedTeams.first.name,
                        imageUrl: widget.event.localizedTeams.first.avatarUrl,
                        titleColor: widget.teamsColor,
                      ),
                    ),
                  ),
                ],
                const SizedBox(width: 15.0),
                Flexible(
                  flex: 4,
                  child: widget.infoWidget ??
                      EventInfo(
                        eventName: widget.event.name,
                        eventTime: widget.event.startTimeDateTime,
                        isLive: widget.event.isLive,
                        isFinished: widget.event.isFinished,
                      ),
                ),
                const SizedBox(width: 15.0),
                if (widget.event.localizedTeams.isNotEmpty) ...[
                  Flexible(
                    flex: 4,
                    child: InkWell(
                      onTap: widget.openTeams
                          ? () => openTeam(
                                widget.event.engTeams.last,
                                widget.event.engTeams.first,
                                widget.event.localizedTeams.last.name,
                              )
                          : null,
                      child: EventTeamCard(
                        title: widget.event.localizedTeams.last.name,
                        imageUrl: widget.event.localizedTeams.last.avatarUrl,
                        titleColor: widget.teamsColor,
                      ),
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
