import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/adaptive/max_with_setter.dart';
import 'package:watch_sports/core/components/text/empty.dart';
import 'package:watch_sports/features/home/presentation/cubits/events/events_state.dart';
import 'package:watch_sports/features/home/presentation/widgets/grouped_events_builder.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../../core/components/listview/listview_builder.dart';
import '../../../../core/cubits/cached/event_list_cubit/event_list_cubit.dart';
import '../../../../core/cubits/cached/event_list_cubit/event_list_state.dart';
import '../../../../core/models/event.dart';
import 'event_card.dart';

class EventsBuilder extends StatelessWidget {
  final EventListCubit homeEventsCubit;
  final EventsState eventsState;
  final AppRouter appRouter;
  final bool groupedBuilder;
  const EventsBuilder({
    super.key,
    required this.homeEventsCubit,
    required this.eventsState,
    required this.appRouter,
    this.groupedBuilder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaxWidthSetter(
        width: 500.0,
        child: BlocBuilder<EventListCubit, EventListState>(
          bloc: homeEventsCubit,
          builder: (context, state) {
            final notFinished = state.events;
            if (notFinished.isNotEmpty) {
              if (groupedBuilder) {
                return GroupedEventsBuilder(notFinished);
              }

              return CustomListViewBuilder<Event>(
                items: notFinished,
                itemBuilder: (context, _, item) {
                  return EventCard(
                    event: item,
                    onTap: () {
                      if (item.isMma) {
                        appRouter.push(TournamentDetailsRoute(events: [item]));
                      } else {
                        appRouter.push(EventDetailsRoute(event: item));
                      }
                    },
                  );
                },
              );
            }

            if (eventsState is EventsLoaded && notFinished.isEmpty) {
              return EmptyText(localizationInstance.noEvents);
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
