import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/app_bar/main_app_bar.dart';
import 'package:watch_sports/features/home/presentation/cubits/banners_cubit.dart';
import 'package:watch_sports/features/home/presentation/cubits/events/events_state.dart';
import 'package:watch_sports/features/home/presentation/widgets/categories.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/router/app_router.dart';
import 'package:watch_sports/setup.dart';
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

class _HomeScreenState extends State<HomeScreen> {
  final bannersCubit = getIt<BannersCubit>();
  final eventsCubit = getIt<EventsCubit>();
  final horizontalPadding = 15.0;
  final selectedCategoryCubit = StringCubit();
  final appRouter = getIt<AppRouter>();

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    await bannersCubit.call();
    await eventsCubit.call();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            HomeBannersBuilder(
              bannersCubit: bannersCubit,
              horizontalPadding: horizontalPadding,
            ),
            const SizedBox(height: 35.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: HomeContainerTitle(title: localizationInstance.topEvents),
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
