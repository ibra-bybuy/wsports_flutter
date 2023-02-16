import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/textfield/sarchfield.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/core/extensions/scroll_controller.dart';
import 'package:watch_sports/features/tournaments/presentation/cubits/tournaments_cubit.dart';
import 'package:watch_sports/features/tournaments/presentation/widgets/tournaments_list_card.dart';
import '../../../../core/components/app_bar/main_app_bar.dart';
import '../../../../core/components/loader/alert_loader/alert_loading_listener.dart';
import '../../../../core/components/text/empty.dart';
import '../../../../core/cubits/cached/tournaments_cubit/tournaments_cubit.dart';
import '../../../../core/cubits/cached/tournaments_cubit/tournaments_state.dart';
import '../../../../i18n/i18n.dart';
import '../../../../setup.dart';

class TournamentsScreen extends StatefulWidget {
  const TournamentsScreen({Key? key}) : super(key: key);

  @override
  State<TournamentsScreen> createState() => _TournamentsScreenState();
}

class _TournamentsScreenState extends State<TournamentsScreen>
    with AutomaticKeepAliveClientMixin {
  final horizontalPadding = 15.0;
  final uiCubit = getIt<TournamentsCubit>();
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      uiCubit.call();

      scrollController.addListener(() {
        if (scrollController.isScrolledToBottom) {
          uiCubit.paginationProvider.onBottomScrolled();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AlertLoadListener<FetchState>(
      cubit: uiCubit,
      isLoading: (state) {
        return state is FetchLoading;
      },
      child: Scaffold(
        appBar: MainAppBar(
          children: [
            SearchField(
              onChanged: uiCubit.cachedTournamentsCubit.filterBySearch,
            ),
          ],
        ),
        body: BlocBuilder<CachedTournamentsCubit, TournamentsState>(
          bloc: uiCubit.cachedTournamentsCubit,
          builder: (context, tournamentsState) {
            if (tournamentsState.items.isNotEmpty) {
              return TournamentsListCard(
                tournamentsState.items,
                controller: scrollController,
              );
            }

            return BlocBuilder<TournamentsCubit, FetchState>(
              bloc: uiCubit,
              builder: (context, state) {
                if (state is FetchLoaded) {
                  return EmptyText(localizationInstance.noTournaments);
                }

                return const SizedBox();
              },
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
