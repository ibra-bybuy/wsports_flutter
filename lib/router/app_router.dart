import 'package:auto_route/auto_route.dart';
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

@singleton
@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: "/",
      page: MainRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: TournamentsRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
    AutoRoute(path: '/event/:id', page: EventDetailsRoute.page),
    AutoRoute(page: CommentSectionRoute.page),
    AutoRoute(page: SearchRoute.page),
    AutoRoute(page: TournamentDetailsRoute.page),
    AutoRoute(page: SettingsRoute.page),
    AutoRoute(page: FighterRoute.page),
  ];
}
