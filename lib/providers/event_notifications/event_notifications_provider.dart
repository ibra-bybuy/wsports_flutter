import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/cached/list_string/list_string_cubit.dart';
import 'package:watch_sports/i18n/i18n.dart';
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
        final event = Event.tryFromString(payload);
        if (event != null) {
          appRouter.pushAndPopUntil(
            EventDetailsRoute(event: event),
            predicate: (i) => i.isFirst,
          );
        }
      },
    );
  }

  Future<void> addEvent(Event event) async {
    final startTime = event.startTimeDateTime;
    if (startTime != null) {
      final leftMiliseconds = startTime
          .subtract(
              Duration(milliseconds: DateTime.now().millisecondsSinceEpoch))
          .millisecondsSinceEpoch;
      localNotifications.scheduledNotification(
        id: event.id.hashCode,
        title: localizationInstance.eventStarted,
        body:
            "${event.teamsToStr.isNotEmpty ? "${event.teamsToStr}." : ""} ${event.name}"
                .trim(),
        duration: Duration(milliseconds: leftMiliseconds),
        payload: event.toMapString(),
      );
      cubit.add(event.id);
    }
  }

  Future<void> removeEvent(Event event) async {
    localNotifications.cancel(event.id.hashCode);
    cubit.remove(event.id);
  }

  Future<void> toggle(Event event) async {
    final c = contains(event.id);

    if (c) {
      removeEvent(event);
    } else {
      addEvent(event);
    }
  }

  bool contains(String eventId) {
    return cubit.contains(eventId);
  }
}
