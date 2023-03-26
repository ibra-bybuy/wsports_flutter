import 'package:flutter/material.dart';

import '../../../features/event_details/presentation/widgets/event_notification_builder.dart';
import '../../models/event.dart';

class EventVerticalCardTrailing extends StatelessWidget {
  final Event event;
  const EventVerticalCardTrailing(this.event, {super.key});

  @override
  Widget build(BuildContext context) {
    return EventNotificationBuilder(
      [event],
      iconBuilder: (contains) {
        return Icon(
          contains ? Icons.notifications : Icons.notifications_outlined,
          color: contains
              ? Colors.red
              : Theme.of(context).textTheme.bodySmall?.color,
        );
      },
    );
  }
}
