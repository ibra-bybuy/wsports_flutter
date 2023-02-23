import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/event_vertical/notification.dart';
import 'package:watch_sports/core/components/event_vertical/team.dart';
import 'package:watch_sports/core/cubits/cached/event_scores/event_scores_cubit.dart';
import 'package:watch_sports/core/cubits/cached/event_scores/event_scores_state.dart';
import 'package:watch_sports/router/app_router.dart';
import 'package:watch_sports/setup.dart';
import '../../models/event.dart';
import 'info.dart';

class EventVerticalCard extends StatefulWidget {
  final Event event;
  const EventVerticalCard(this.event, {super.key});

  @override
  State<EventVerticalCard> createState() => _EventVerticalCardState();
}

class _EventVerticalCardState extends State<EventVerticalCard> {
  final cachedCubit = getIt<CachedEventScoresCubit>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final router = getIt<AppRouter>();
        if (widget.event.isMma) {
          router.push(TournamentDetailsRoute(events: [widget.event]));
        } else {
          router.push(EventDetailsRoute(event: widget.event));
        }
      },
      child: BlocBuilder<CachedEventScoresCubit, EventsScoresState>(
        bloc: cachedCubit,
        builder: (context, state) {
          final score = cachedCubit.getScoreByEvent(widget.event);
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0XFFE4E5E5),
                width: 0.4,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(3.0)),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
            child: Column(
              children: [
                EventVerticalCardInfo(
                  isLive: widget.event.isLive,
                  isFinished: widget.event.isFinished,
                  eventTime: widget.event.startTimeDateTime,
                  eventCurrentTime: score?.time ?? "",
                ),
                const SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 5.0),
                    Expanded(
                      child: Column(
                        children: [
                          if (widget.event.teams.isNotEmpty) ...[
                            EventVerticalCardTeam(
                              widget.event.localizedTeams.first,
                              score: score?.firstScore,
                              showScore: widget.event.isLive,
                            ),
                            const SizedBox(height: 10.0),
                            EventVerticalCardTeam(
                              widget.event.localizedTeams.last,
                              score: score?.lastScore,
                              showScore: widget.event.isLive,
                            ),
                          ],
                        ],
                      ),
                    ),
                    if (!widget.event.isStarted) ...[
                      EventVerticalCardTrailing(widget.event),
                    ],
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
