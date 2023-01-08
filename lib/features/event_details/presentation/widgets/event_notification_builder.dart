import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/cubits/cached/list_string/list_string_cubit.dart';
import 'package:watch_sports/core/cubits/cached/list_string/list_string_state.dart';

import '../../../../core/models/event.dart';
import '../../../../providers/event_notifications/event_notifications_provider.dart';
import '../../../../setup.dart';

class EventNotificationBuilder extends StatefulWidget {
  final Event event;
  const EventNotificationBuilder(
    this.event, {
    super.key,
  });

  @override
  State<EventNotificationBuilder> createState() =>
      _EventNotificationBuilderState();
}

class _EventNotificationBuilderState extends State<EventNotificationBuilder> {
  final provider = getIt<EventNotificationsProvider>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CachedListStringCubit, ListStringState>(
      bloc: provider.cubit,
      builder: (context, state) {
        final contains = provider.contains(widget.event.id);

        return IconButton(
          onPressed: () => provider.toggle(widget.event),
          icon: Icon(
            Icons.notifications_on,
            color: contains ? Colors.yellow : null,
          ),
        );
      },
    );
  }
}
