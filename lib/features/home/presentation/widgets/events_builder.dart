import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/adaptive/max_with_setter.dart';
import 'package:watch_sports/core/components/text/empty.dart';
import 'package:watch_sports/features/home/presentation/cubits/events/events_state.dart';
import 'package:watch_sports/features/home/presentation/widgets/grouped_events_builder.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../../core/components/event_vertical/events_vertical_card.dart';
import '../../../../core/cubits/cached/event_list_cubit/event_list_cubit.dart';
import '../../../../core/cubits/cached/event_list_cubit/event_list_state.dart';

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

              return EventsVerticalCard(notFinished);
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
