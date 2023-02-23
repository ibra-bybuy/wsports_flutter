import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/comment_section/presentation/screens/comment_section_screen.dart';
import 'package:watch_sports/features/event_details/presentation/screens/event_details_screen.dart';
import 'package:watch_sports/features/fighter/presentation/screens/fighter_screen.dart';
import 'package:watch_sports/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:watch_sports/features/main/presentation/screens/main_screen.dart';
import 'package:watch_sports/features/tournament_details/presentation/screens/tournament_details_screen.dart';
import 'package:watch_sports/features/tournaments/presentation/screens/tournaments_screen.dart';
import '../core/models/event.dart';
import '../core/models/team.dart';
import '../features/profile/presentation/screens/profile_screen.dart';
import '../features/profile/presentation/screens/settings_screen.dart';
import '../features/search/presentation/screens/search_screen.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainScreen,
      initial: true,
      children: [
        AutoRoute(
          name: "HomeRoutes",
          page: EmptyRouterPage,
          children: [
            AutoRoute(page: HomeScreen, initial: true),
          ],
        ),
        AutoRoute(
          name: "TournamentsRoutes",
          page: EmptyRouterPage,
          children: [
            AutoRoute(page: TournamentsScreen, initial: true),
          ],
        ),
        AutoRoute(
          name: "ProfileRoutes",
          page: EmptyRouterPage,
          children: [
            AutoRoute(page: ProfileScreen, initial: true),
          ],
        ),
      ],
    ),
    AutoRoute(path: '/event/:id', page: EventDetailsScreen),
    AutoRoute(page: CommentSectionScreen),
    AutoRoute(page: SearchScreen),
    AutoRoute(page: TournamentDetailsScreen),
    AutoRoute(page: SettingsScreen),
    AutoRoute(page: FighterScreen),
  ],
)
@singleton
class AppRouter extends _$AppRouter {}
