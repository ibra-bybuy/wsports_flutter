import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/features/home/presentation/screens/home_screen.dart';
import 'package:watch_sports/features/main/presentation/cubits/bottom_nav_bar_cubit.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../../../../setup.dart';
import '../../../profile/presentation/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final bottomNavBarCubit = getIt<BottomNavBarCubit>();

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
    return Scaffold(
      body: PageView(
        controller: bottomNavBarCubit.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          //TournamentsScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BlocBuilder<BottomNavBarCubit, int>(
        bloc: bottomNavBarCubit,
        builder: (context, state) {
          return CustomNavigationBar(
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.home),
                title: Text(localizationInstance.home),
              ),
              // CustomNavigationBarItem(
              //   icon: const Icon(Icons.emoji_events),
              //   title: Text(localizationInstance.tournaments),
              // ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.account_circle),
                title: Text(localizationInstance.account),
              ),
            ],
            currentIndex: state,
            onTap: (index) {
              bottomNavBarCubit.setNewPage(index);
            },
          );
        },
      ),
    );
  }
}
