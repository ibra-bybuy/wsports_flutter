import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/text/empty.dart';
import 'package:watch_sports/features/home/presentation/cubits/events/events_state.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../../core/components/listview/listview_builder.dart';
import '../../../../core/cubits/cached/home_events_cubit/home_events_cubit.dart';
import '../../../../core/cubits/cached/home_events_cubit/home_events_state.dart';
import '../../../../core/models/event.dart';
import 'event_card.dart';

class EventsBuilder extends StatelessWidget {
  final HomeEventsCubit homeEventsCubit;
  final EventsState eventsState;
  final AppRouter appRouter;
  const EventsBuilder({
    super.key,
    required this.homeEventsCubit,
    required this.eventsState,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeEventsCubit, HomeEventsState>(
      bloc: homeEventsCubit,
      builder: (context, state) {
        if (state.events.isNotEmpty) {
          return CustomListViewBuilder<Event>(
            items: state.events,
            itemBuilder: (context, _, item) {
              return EventCard(
                event: item,
                onTap: () {
                  appRouter.push(EventDetailsRoute(event: item));
                },
              );
            },
          );
        }

        if (eventsState is EventsLoaded && state.events.isEmpty) {
          return EmptyText(localizationInstance.noEvents);
        }

        return const SizedBox();
      },
    );
  }
}
