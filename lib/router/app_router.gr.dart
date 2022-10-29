// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    EventDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<EventDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: EventDetailsScreen(
          key: args.key,
          event: args.event,
        ),
      );
    },
    CommentSectionRoute.name: (routeData) {
      final args = routeData.argsAs<CommentSectionRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CommentSectionScreen(
          key: args.key,
          eventId: args.eventId,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          EventDetailsRoute.name,
          path: '/event-details-screen',
        ),
        RouteConfig(
          CommentSectionRoute.name,
          path: '/comment-section-screen',
        ),
        RouteConfig(
          SettingsRoute.name,
          path: '/settings-screen',
        ),
      ];
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [EventDetailsScreen]
class EventDetailsRoute extends PageRouteInfo<EventDetailsRouteArgs> {
  EventDetailsRoute({
    Key? key,
    required Event event,
  }) : super(
          EventDetailsRoute.name,
          path: '/event-details-screen',
          args: EventDetailsRouteArgs(
            key: key,
            event: event,
          ),
        );

  static const String name = 'EventDetailsRoute';
}

class EventDetailsRouteArgs {
  const EventDetailsRouteArgs({
    this.key,
    required this.event,
  });

  final Key? key;

  final Event event;

  @override
  String toString() {
    return 'EventDetailsRouteArgs{key: $key, event: $event}';
  }
}

/// generated route for
/// [CommentSectionScreen]
class CommentSectionRoute extends PageRouteInfo<CommentSectionRouteArgs> {
  CommentSectionRoute({
    Key? key,
    required String eventId,
  }) : super(
          CommentSectionRoute.name,
          path: '/comment-section-screen',
          args: CommentSectionRouteArgs(
            key: key,
            eventId: eventId,
          ),
        );

  static const String name = 'CommentSectionRoute';
}

class CommentSectionRouteArgs {
  const CommentSectionRouteArgs({
    this.key,
    required this.eventId,
  });

  final Key? key;

  final String eventId;

  @override
  String toString() {
    return 'CommentSectionRouteArgs{key: $key, eventId: $eventId}';
  }
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '/settings-screen',
        );

  static const String name = 'SettingsRoute';
}
