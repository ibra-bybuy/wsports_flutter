import 'package:auto_route/auto_route.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../home/presentation/widgets/app_version_listener.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppVersionListener(
      child: AutoTabsScaffold(
        routes: const [
          HomeRoutes(),
          TournamentsRoutes(),
          ProfileRoutes(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) {
          return CustomNavigationBar(
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.home),
                title: Text(localizationInstance.home),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.emoji_events),
                title: Text(localizationInstance.tournaments),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.account_circle),
                title: Text(localizationInstance.account),
              ),
            ],
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
          );
        },
      ),
    );
  }
}
