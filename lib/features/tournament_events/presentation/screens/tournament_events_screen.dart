import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:watch_sports/core/components/adaptive/max_with_setter.dart';
import 'package:watch_sports/core/components/app_bar/main_app_bar.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/cubits/cached/event_list_cubit/event_list_cubit.dart';
import 'package:watch_sports/core/cubits/cached/event_list_cubit/event_list_state.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/core/functions/size_config.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../../core/components/listview/listview_builder.dart';
import '../../../../core/components/loader/alert_loader/alert_loading_listener.dart';
import '../../../../core/components/refresh/refresher.dart';
import '../../../../core/components/text/empty.dart';
import '../../../../core/models/event.dart';
import '../../../../i18n/i18n.dart';
import '../../../../setup.dart';
import '../../../home/presentation/widgets/event_card.dart';
import '../../../tournament_details/domain/entities/tournament_details_response_entities.dart';
import '../../../tournament_details/presentation/cubits/tournament_details_cubit.dart';

@RoutePage()
class TournamentEventsScreen extends StatefulWidget {
  final String tournamentCode;
  final String? titleText;
  const TournamentEventsScreen({
    Key? key,
    required this.tournamentCode,
    this.titleText,
  }) : super(key: key);

  @override
  State<TournamentEventsScreen> createState() => _TournamentEventsScreenState();
}

class _TournamentEventsScreenState extends State<TournamentEventsScreen> {
  final uiCubit = getIt<TournamentDetailsCubit>();
  final appRouter = getIt<AppRouter>();
  final _refreshController = RefreshController(initialRefresh: false);
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    uiCubit.setEvents(Event(name: widget.tournamentCode), []);
    uiCubit.eventListCubit.setEvents([]);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      uiCubit.load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final strings = localizationInstance;
    return AlertLoadListener<FetchState>(
      cubit: uiCubit,
      isLoading: (state) => state is FetchLoading,
      darkenBackground: false,
      child: Scaffold(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        appBar: MainAppBar(
          children: [
            if (widget.titleText != null) ...[
              GoogleText(
                widget.titleText!,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ],
          ],
        ),
        body: Center(
          child: MaxWidthSetter(
            width: 500.0,
            child: BlocBuilder<TournamentDetailsCubit,
                FetchState<TournamentDetailsResponseEntities>>(
              bloc: uiCubit,
              builder: (context, state) {
                return BlocBuilder<EventListCubit, EventListState>(
                  bloc: uiCubit.eventListCubit,
                  builder: (context, eventListState) {
                    if (eventListState.events.isNotEmpty) {
                      return Refresher(
                        scrollController: scrollController,
                        controller: _refreshController,
                        onRefresh: () async {
                          await uiCubit.load();
                          _refreshController.refreshCompleted();
                        },
                        child: SingleChildScrollView(
                          child: CustomListViewBuilder<Event>(
                            items: eventListState.events,
                            itemBuilder: (context, _, item) {
                              return EventCard(
                                event: item,
                                onTap: () {
                                  if (item.isMma) {
                                    appRouter.push(
                                        TournamentDetailsRoute(events: [item]));
                                  } else {
                                    appRouter
                                        .push(EventDetailsRoute(event: item));
                                  }
                                },
                              );
                            },
                          ),
                        ),
                      );
                    }

                    if (state is FetchLoading) {
                      return const SizedBox();
                    }

                    return Center(
                      child: EmptyText(
                        strings.nothingFound,
                        fontWeight: null,
                        fontSize: SizeConfig(context, 13.0)(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
