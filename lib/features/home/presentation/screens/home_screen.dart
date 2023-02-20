import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:watch_sports/core/components/app_bar/main_app_bar.dart';
import 'package:watch_sports/core/components/loader/alert_loader/alert_loading_listener.dart';
import 'package:watch_sports/core/extensions/scroll_controller.dart';
import 'package:watch_sports/features/home/presentation/cubits/banners_cubit.dart';
import 'package:watch_sports/features/home/presentation/cubits/events/events_state.dart';
import 'package:watch_sports/features/home/presentation/widgets/categories.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/router/app_router.dart';
import 'package:watch_sports/setup.dart';
import '../../../../core/components/app_bar/search_app_bar.dart';
import '../../../../core/components/refresh/refresher.dart';
import '../../../../core/cubits/custom/string_cubit.dart/string_cubit.dart';
import '../cubits/events/events_cubit.dart';
import '../widgets/banners_builder.dart';
import '../widgets/container_title.dart';
import '../widgets/events_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  final bannersCubit = getIt<BannersCubit>();
  final eventsCubit = getIt<EventsCubit>();
  final horizontalPadding = 15.0;
  final selectedCategoryCubit = StringCubit();
  final appRouter = getIt<AppRouter>();
  final scrollController = ScrollController();
  final _refreshController = RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();

    _load();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.addListener(() {
          if (scrollController.isScrolledToBottom) {
            eventsCubit.paginationProvider.onBottomScrolled();
          }
        });
      }
    });
  }

  Future<void> _load() async {
    bannersCubit.call();
    eventsCubit.call();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AlertLoadListener<EventsState>(
      cubit: eventsCubit,
      isLoading: (state) => state is EventsLoading,
      child: Scaffold(
        appBar: const MainAppBar(
          children: [
            SearchAppBar(),
          ],
        ),
        body: Refresher(
          scrollController: scrollController,
          controller: _refreshController,
          onRefresh: () async {
            await _load();
            _refreshController.refreshCompleted();
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                HomeBannersBuilder(
                  bannersCubit: bannersCubit,
                  horizontalPadding: horizontalPadding,
                  appRouter: appRouter,
                ),
                const SizedBox(height: 35.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child:
                      HomeContainerTitle(title: localizationInstance.topEvents),
                ),
                const SizedBox(height: 20.0),
                HomeCategories(
                  paddingHorizontal: horizontalPadding,
                  selectedCategoryCubit: selectedCategoryCubit,
                  onCategoryClicked: (category) {
                    final stateToSet =
                        selectedCategoryCubit.state == category ? "" : category;
                    selectedCategoryCubit.set(stateToSet);
                    eventsCubit.call(category: stateToSet);
                  },
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: BlocBuilder<EventsCubit, EventsState>(
                    bloc: eventsCubit,
                    buildWhen: (prev, curr) => curr is EventsLoaded,
                    builder: (context, state) {
                      return EventsBuilder(
                        homeEventsCubit: eventsCubit.getCurrentCategoryCubit,
                        eventsState: state,
                        appRouter: appRouter,
                        groupedBuilder: selectedCategoryCubit.state ==
                            CategoryEnum.mma.value,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
