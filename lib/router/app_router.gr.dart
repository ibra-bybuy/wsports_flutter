// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    FighterRoute.name: (routeData) {
      final args = routeData.argsAs<FighterRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FighterScreen(
          args.item,
          key: args.key,
          title: args.title,
          opponent: args.opponent,
          searchByAvatar: args.searchByAvatar,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    TournamentDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TournamentDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TournamentDetailsScreen(
          key: args.key,
          events: args.events,
        ),
      );
    },
    EventDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EventDetailsRouteArgs>(
          orElse: () =>
              EventDetailsRouteArgs(eventId: pathParams.optString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EventDetailsScreen(
          key: args.key,
          event: args.event,
          eventId: args.eventId,
        ),
      );
    },
    CommentSectionRoute.name: (routeData) {
      final args = routeData.argsAs<CommentSectionRouteArgs>();
      return AutoRoutePage<dynamic>(
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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchScreen(
          key: args.key,
          initialQuery: args.initialQuery,
          showSearch: args.showSearch,
          titleText: args.titleText,
          showPreviousResults: args.showPreviousResults,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsScreen(
          key: args.key,
          title: args.title,
          items: args.items,
          onTap: args.onTap,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    TournamentsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TournamentsScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    TournamentEventsRoute.name: (routeData) {
      final args = routeData.argsAs<TournamentEventsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TournamentEventsScreen(
          key: args.key,
          tournamentCode: args.tournamentCode,
          titleText: args.titleText,
        ),
      );
    },
  };
}

/// generated route for
/// [FighterScreen]
class FighterRoute extends PageRouteInfo<FighterRouteArgs> {
  FighterRoute({
    required Team item,
    Key? key,
    required String title,
    required Team opponent,
    bool searchByAvatar = false,
    List<PageRouteInfo>? children,
  }) : super(
          FighterRoute.name,
          args: FighterRouteArgs(
            item: item,
            key: key,
            title: title,
            opponent: opponent,
            searchByAvatar: searchByAvatar,
          ),
          initialChildren: children,
        );

  static const String name = 'FighterRoute';

  static const PageInfo<FighterRouteArgs> page =
      PageInfo<FighterRouteArgs>(name);
}

class FighterRouteArgs {
  const FighterRouteArgs({
    required this.item,
    this.key,
    required this.title,
    required this.opponent,
    this.searchByAvatar = false,
  });

  final Team item;

  final Key? key;

  final String title;

  final Team opponent;

  final bool searchByAvatar;

  @override
  String toString() {
    return 'FighterRouteArgs{item: $item, key: $key, title: $title, opponent: $opponent, searchByAvatar: $searchByAvatar}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TournamentDetailsScreen]
class TournamentDetailsRoute extends PageRouteInfo<TournamentDetailsRouteArgs> {
  TournamentDetailsRoute({
    Key? key,
    required List<Event> events,
    List<PageRouteInfo>? children,
  }) : super(
          TournamentDetailsRoute.name,
          args: TournamentDetailsRouteArgs(
            key: key,
            events: events,
          ),
          initialChildren: children,
        );

  static const String name = 'TournamentDetailsRoute';

  static const PageInfo<TournamentDetailsRouteArgs> page =
      PageInfo<TournamentDetailsRouteArgs>(name);
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
/// [EventDetailsScreen]
class EventDetailsRoute extends PageRouteInfo<EventDetailsRouteArgs> {
  EventDetailsRoute({
    Key? key,
    Event? event,
    String? eventId,
    List<PageRouteInfo>? children,
  }) : super(
          EventDetailsRoute.name,
          args: EventDetailsRouteArgs(
            key: key,
            event: event,
            eventId: eventId,
          ),
          rawPathParams: {'id': eventId},
          initialChildren: children,
        );

  static const String name = 'EventDetailsRoute';

  static const PageInfo<EventDetailsRouteArgs> page =
      PageInfo<EventDetailsRouteArgs>(name);
}

class EventDetailsRouteArgs {
  const EventDetailsRouteArgs({
    this.key,
    this.event,
    this.eventId,
  });

  final Key? key;

  final Event? event;

  final String? eventId;

  @override
  String toString() {
    return 'EventDetailsRouteArgs{key: $key, event: $event, eventId: $eventId}';
  }
}

/// generated route for
/// [CommentSectionScreen]
class CommentSectionRoute extends PageRouteInfo<CommentSectionRouteArgs> {
  CommentSectionRoute({
    Key? key,
    required String eventId,
    List<PageRouteInfo>? children,
  }) : super(
          CommentSectionRoute.name,
          args: CommentSectionRouteArgs(
            key: key,
            eventId: eventId,
          ),
          initialChildren: children,
        );

  static const String name = 'CommentSectionRoute';

  static const PageInfo<CommentSectionRouteArgs> page =
      PageInfo<CommentSectionRouteArgs>(name);
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
    bool showPreviousResults = true,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            initialQuery: initialQuery,
            showSearch: showSearch,
            titleText: titleText,
            showPreviousResults: showPreviousResults,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<SearchRouteArgs> page = PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.initialQuery,
    this.showSearch = true,
    this.titleText,
    this.showPreviousResults = true,
  });

  final Key? key;

  final String? initialQuery;

  final bool showSearch;

  final String? titleText;

  final bool showPreviousResults;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, initialQuery: $initialQuery, showSearch: $showSearch, titleText: $titleText, showPreviousResults: $showPreviousResults}';
  }
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    Key? key,
    required String title,
    required List<SettingsItem> items,
    void Function(
      BuildContext,
      String,
    )?
        onTap,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsRoute.name,
          args: SettingsRouteArgs(
            key: key,
            title: title,
            items: items,
            onTap: onTap,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<SettingsRouteArgs> page =
      PageInfo<SettingsRouteArgs>(name);
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

  final List<SettingsItem> items;

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
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TournamentsScreen]
class TournamentsRoute extends PageRouteInfo<void> {
  const TournamentsRoute({List<PageRouteInfo>? children})
      : super(
          TournamentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TournamentsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TournamentEventsScreen]
class TournamentEventsRoute extends PageRouteInfo<TournamentEventsRouteArgs> {
  TournamentEventsRoute({
    Key? key,
    required String tournamentCode,
    String? titleText,
    List<PageRouteInfo>? children,
  }) : super(
          TournamentEventsRoute.name,
          args: TournamentEventsRouteArgs(
            key: key,
            tournamentCode: tournamentCode,
            titleText: titleText,
          ),
          initialChildren: children,
        );

  static const String name = 'TournamentEventsRoute';

  static const PageInfo<TournamentEventsRouteArgs> page =
      PageInfo<TournamentEventsRouteArgs>(name);
}

class TournamentEventsRouteArgs {
  const TournamentEventsRouteArgs({
    this.key,
    required this.tournamentCode,
    this.titleText,
  });

  final Key? key;

  final String tournamentCode;

  final String? titleText;

  @override
  String toString() {
    return 'TournamentEventsRouteArgs{key: $key, tournamentCode: $tournamentCode, titleText: $titleText}';
  }
}
