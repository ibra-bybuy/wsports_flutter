import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/comment_section/presentation/screens/comment_section_screen.dart';
import 'package:watch_sports/features/event_details/presentation/screens/event_details_screen.dart';
import 'package:watch_sports/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:watch_sports/features/settings/presentation/screens/settings_screen.dart';
import 'package:watch_sports/features/tournament_details/presentation/screens/tournament_details_screen.dart';
import '../core/models/event.dart';
import '../features/search/presentation/screens/search_screen.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: EventDetailsScreen),
    AutoRoute(page: CommentSectionScreen),
    AutoRoute(page: SettingsScreen),
    AutoRoute(page: SearchScreen),
    AutoRoute(page: TournamentDetailsScreen),
  ],
)
@singleton
class AppRouter extends _$AppRouter {}
