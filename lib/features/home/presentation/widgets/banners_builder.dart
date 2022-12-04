import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/features/home/presentation/cubits/banners_cubit.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../../core/cubits/cached/banners_cubit/banners_cubit.dart';
import '../../../../core/cubits/cached/banners_cubit/banners_state.dart';
import 'banners_list.dart';
import 'container_title.dart';

class HomeBannersBuilder extends StatelessWidget {
  final BannersCubit bannersCubit;
  final double horizontalPadding;
  final AppRouter appRouter;
  const HomeBannersBuilder({
    super.key,
    required this.bannersCubit,
    required this.horizontalPadding,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    final strings = localizationInstance;
    return BlocBuilder<CachedBannersCubit, CachedBannersState>(
      bloc: bannersCubit.cachedBannersCubit,
      builder: (context, state) {
        if (state.items.isNotEmpty) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: HomeContainerTitle(title: strings.tournaments),
              ),
              const SizedBox(height: 20.0),
              HomeBannersList(
                items: state.items,
                paddingHorizontal: horizontalPadding,
                onTap: (banner) {
                  appRouter.push(
                    SearchRoute(
                      initialQuery: banner.routeUrl,
                      showSearch: false,
                      titleText: banner.routeUrl,
                    ),
                  );
                },
              ),
            ],
          );
        }
        return const SizedBox();
      },
    );
  }
}
