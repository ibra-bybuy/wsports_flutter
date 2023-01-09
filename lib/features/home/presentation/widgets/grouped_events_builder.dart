import 'package:flutter/material.dart';
import 'package:watch_sports/core/extensions/event_list.dart';
import '../../../../core/components/cards/events/event_name_card/event_name_card.dart';
import '../../../../core/components/listview/grouped_listview_builder.dart';
import '../../../../core/models/event.dart';
import '../../../../router/app_router.dart';
import '../../../../setup.dart';

class GroupedEventsBuilder extends StatefulWidget {
  final List<Event> items;
  const GroupedEventsBuilder(this.items, {super.key});

  @override
  State<GroupedEventsBuilder> createState() => _GroupedEventsBuilderState();
}

class _GroupedEventsBuilderState extends State<GroupedEventsBuilder> {
  final appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return GroupedListViewBuilder<Event, String>(
      widget.items,
      groupBy: (event) => event.startTime,
      groupHeaderBuilder: (event) => EventNameCard(
        event,
        onPressed: () {
          final groupedItems =
              widget.items.groupedByDateAndName(event.startTime, event.name);
          appRouter.push(TournamentDetailsRoute(events: groupedItems));
        },
      ),
      itemBuilder: (_, __) => const SizedBox(),
    );
  }
}
