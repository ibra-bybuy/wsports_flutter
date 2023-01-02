import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/text/empty.dart';
import 'package:watch_sports/features/home/presentation/cubits/events/events_state.dart';
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
  const EventsBuilder({
    super.key,
    required this.homeEventsCubit,
    required this.eventsState,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventListCubit, EventListState>(
      bloc: homeEventsCubit,
      builder: (context, state) {
        if (state.events.isNotEmpty) {
          return CustomListViewBuilder<Event>(
            items: state.events,
            itemBuilder: (context, _, item) {
              if (item.isFinished) {
                //return const SizedBox();
              }
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
