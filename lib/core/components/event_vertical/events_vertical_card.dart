import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/event_vertical/event_vertical_card.dart';
import 'package:watch_sports/core/components/listview/listview_builder.dart';

import '../../models/event.dart';

class EventsVerticalCard extends StatefulWidget {
  final List<Event> events;
  const EventsVerticalCard(this.events, {super.key});

  @override
  State<EventsVerticalCard> createState() => _EventsVerticalCardState();
}

class _EventsVerticalCardState extends State<EventsVerticalCard> {
  @override
  Widget build(BuildContext context) {
    return CustomListViewBuilder(
      items: widget.events,
      itemBuilder: (context, index, item) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: EventVerticalCard(item),
        );
      },
    );
  }
}
