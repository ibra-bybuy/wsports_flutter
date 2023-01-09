import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/cached/list_string/list_string_cubit.dart';
import 'package:watch_sports/core/extensions/event_list.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/providers/event_notifications/event_notification_payload.dart';
import 'package:watch_sports/providers/local_notifications/local_notifications.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../core/models/event.dart';

@LazySingleton()
class EventNotificationsProvider {
  final cubit = CachedListStringCubit("eventNotificationsCubit");
  final LocalNotifications localNotifications;
  final AppRouter appRouter;
  EventNotificationsProvider(
    this.localNotifications,
    this.appRouter,
  );

  void init() {
    localNotifications.listenNotification(
      (payload) {
        final eventPayload = EventNotificationPayload.tryFromString(payload);
        if (eventPayload != null) {
          if (eventPayload.events.isTournament) {
            appRouter.pushAndPopUntil(
              TournamentDetailsRoute(events: eventPayload.events),
              predicate: (i) => i.isFirst,
            );
          } else if (eventPayload.events.isNotEmpty) {
            appRouter.pushAndPopUntil(
              EventDetailsRoute(event: eventPayload.events.first),
              predicate: (i) => i.isFirst,
            );
          }
        }
      },
    );
  }

  Future<void> _addEvent(List<Event> events) async {
    if (events.isEmpty) {
      return;
    }

    final event = events.first;

    final startTime = event.startTimeDateTime;
    if (startTime != null) {
      final leftMiliseconds = startTime
          .subtract(
              Duration(milliseconds: DateTime.now().millisecondsSinceEpoch))
          .millisecondsSinceEpoch;
      localNotifications.scheduledNotification(
        id: events.eventId.hashCode,
        title: localizationInstance.eventStarted,
        body: events.isTournament
            ? event.name
            : "${event.teamsToStr.isNotEmpty ? "${event.teamsToStr}." : ""} ${event.name}"
                .trim(),
        duration: Duration(milliseconds: leftMiliseconds),
        payload: EventNotificationPayload(events: events).toMapString(),
      );
      cubit.add(events.eventId);
    }
  }

  Future<void> _removeEvent(String eventId) async {
    localNotifications.cancel(eventId.hashCode);
    cubit.remove(eventId);
  }

  Future<void> toggle(List<Event> events) async {
    final eventId = events.eventId;

    final c = contains(eventId);

    if (c) {
      _removeEvent(eventId);
    } else {
      _addEvent(events);
    }
  }

  bool contains(String eventId) {
    return cubit.contains(eventId);
  }
}
