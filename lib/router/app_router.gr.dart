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
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SearchScreen(
          key: args.key,
          initialQuery: args.initialQuery,
          showSearch: args.showSearch,
          titleText: args.titleText,
        ),
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
        RouteConfig(
          SearchRoute.name,
          path: '/search-screen',
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

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    String? initialQuery,
    bool showSearch = true,
    String? titleText,
  }) : super(
          SearchRoute.name,
          path: '/search-screen',
          args: SearchRouteArgs(
            key: key,
            initialQuery: initialQuery,
            showSearch: showSearch,
            titleText: titleText,
          ),
        );

  static const String name = 'SearchRoute';
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.initialQuery,
    this.showSearch = true,
    this.titleText,
  });

  final Key? key;

  final String? initialQuery;

  final bool showSearch;

  final String? titleText;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, initialQuery: $initialQuery, showSearch: $showSearch, titleText: $titleText}';
  }
}
