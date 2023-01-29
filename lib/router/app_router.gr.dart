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
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
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
    TournamentDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TournamentDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: TournamentDetailsScreen(
          key: args.key,
          events: args.events,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SettingsScreen(
          key: args.key,
          title: args.title,
          items: args.items,
          onTap: args.onTap,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          MainRoute.name,
          path: '/',
          children: [
            RouteConfig(
              HomeRoute.name,
              path: '',
              parent: MainRoute.name,
            )
          ],
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
          SearchRoute.name,
          path: '/search-screen',
        ),
        RouteConfig(
          TournamentDetailsRoute.name,
          path: '/tournament-details-screen',
        ),
        RouteConfig(
          SettingsRoute.name,
          path: '/settings-screen',
        ),
      ];
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
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

/// generated route for
/// [TournamentDetailsScreen]
class TournamentDetailsRoute extends PageRouteInfo<TournamentDetailsRouteArgs> {
  TournamentDetailsRoute({
    Key? key,
    required List<Event> events,
  }) : super(
          TournamentDetailsRoute.name,
          path: '/tournament-details-screen',
          args: TournamentDetailsRouteArgs(
            key: key,
            events: events,
          ),
        );

  static const String name = 'TournamentDetailsRoute';
}

class TournamentDetailsRouteArgs {
  const TournamentDetailsRouteArgs({
    this.key,
    required this.events,
  });

  final Key? key;

  final List<Event> events;

  @override
  String toString() {
    return 'TournamentDetailsRouteArgs{key: $key, events: $events}';
  }
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    Key? key,
    required String title,
    required List<SettinsItem> items,
    void Function(
      BuildContext,
      String,
    )?
        onTap,
  }) : super(
          SettingsRoute.name,
          path: '/settings-screen',
          args: SettingsRouteArgs(
            key: key,
            title: title,
            items: items,
            onTap: onTap,
          ),
        );

  static const String name = 'SettingsRoute';
}

class SettingsRouteArgs {
  const SettingsRouteArgs({
    this.key,
    required this.title,
    required this.items,
    this.onTap,
  });

  final Key? key;

  final String title;

  final List<SettinsItem> items;

  final void Function(
    BuildContext,
    String,
  )? onTap;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key, title: $title, items: $items, onTap: $onTap}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}
