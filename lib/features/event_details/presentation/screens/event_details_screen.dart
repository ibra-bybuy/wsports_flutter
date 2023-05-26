import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:watch_sports/core/components/loader/alert_loader/alert_loading_listener.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/cubits/custom/event_cubit/event_cubit.dart';
import 'package:watch_sports/core/cubits/custom/string_cubit.dart/string_cubit.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/core/extensions/event.dart';
import 'package:watch_sports/core/extensions/string.dart';
import 'package:watch_sports/core/models/event.dart';
import 'package:watch_sports/features/event_details/domain/entities/event_details_response_entities.dart';
import 'package:watch_sports/features/event_details/presentation/cubits/event_details_cubit.dart';
import 'package:watch_sports/features/event_details/presentation/widgets/share_event.dart';
import 'package:watch_sports/i18n/i18n.dart';
import '../../../../core/components/app_bar/leading_back_force.dart';
import '../../../../core/components/app_bar/simple_app_bar.dart';
import '../../../../core/components/btn/popup_btns.dart';
import '../../../../core/components/refresh/refresher.dart';
import '../../../../core/components/webview/webview.dart';
import '../../../../setup.dart';
import '../../../comment_section/presentation/cubits/comment_section_cubit.dart';
import '../../../tournament_details/presentation/cubits/tournament_details_cubit.dart';
import '../widgets/date_card.dart';
import '../widgets/event_details_listener.dart';
import '../widgets/event_notification_builder.dart';
import '../widgets/team_card.dart';
import '../widgets/tournament_listener.dart';
import '../widgets/write_comment.dart';

@RoutePage()
class EventDetailsScreen extends StatefulWidget {
  final Event? event;
  final String? eventId;
  const EventDetailsScreen({
    Key? key,
    this.event,
    @PathParam('id') this.eventId,
  }) : super(key: key);

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  String get eventId => widget.event?.id ?? (widget.eventId ?? "");
  Event? get eventByLink => widget.eventId?.toEventByLink();

  final horizontalPadding = 25.0;
  final commentSectionCubit = getIt<CommentSectionCubit>();
  final uiCubit = getIt<EventDetailsCubit>();
  final _refreshController = RefreshController(initialRefresh: false);
  final selectedStream = StringCubit();
  late final PullToRefreshController _pullToRefreshController;
  final tournamentDetailsCubit = getIt<TournamentDetailsCubit>();

  @override
  void initState() {
    super.initState();
    uiCubit.setEvent(
      widget.event ??
          Event(
            id: widget.eventId ?? "",
          ),
    );
    commentSectionCubit.init(eventId);
    uiCubit.call(eventId);

    _pullToRefreshController = PullToRefreshController(
      onRefresh: () async {
        await _onRefresh();
        _pullToRefreshController.endRefreshing();
      },
      options: PullToRefreshOptions(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    commentSectionCubit.dispose();
  }

  Future<void> _onRefresh() async {
    await uiCubit.call(eventId);
  }

  @override
  Widget build(BuildContext context) {
    const color = Color.fromARGB(255, 18, 18, 32);
    return EventTournamentByLinkListener(
      tournamentDetailsCubit,
      eventByLink: eventByLink,
      onSuccess: (event) {
        uiCubit.setSuccess(EventDetailsResponseEntities(event: event));
      },
      child: EventDetailsCubitListener(
        uiCubit,
        child: AlertLoadListener(
          cubit: tournamentDetailsCubit,
          isLoading: (state) => state is FetchLoading && widget.eventId != null,
          child: Refresher(
            controller: _refreshController,
            physics: const NeverScrollableScrollPhysics(),
            onRefresh: () async {
              await _onRefresh();
              _refreshController.refreshCompleted();
            },
            child: BlocBuilder<EventCubit, Event>(
              bloc: uiCubit.eventCubit,
              builder: (context, state) {
                return Scaffold(
                  backgroundColor: color,
                  appBar: SimpleAppBar(
                    title: state.name,
                    leading: !Navigator.of(context).canPop()
                        ? const AppBarLeadingBackForceBtn()
                        : null,
                    backgroundColor: color,
                    actions: !state.isStarted
                        ? [
                            EventNotificationBuilder([state]),
                            ShareEventIcon(state.shareTxt),
                          ]
                        : state.streams.length >= 2
                            ? [
                                PopupBtns(
                                  titles: state.streams.map((e) {
                                    return PopupBtnModel(
                                      e.url,
                                      localizationInstance.stream,
                                    );
                                  }).toList(),
                                  addKey: true,
                                  onSelected: (url) {
                                    selectedStream.set(url);
                                  },
                                ),
                              ]
                            : [
                                ShareEventIcon(state.shareTxt),
                              ],
                  ),
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (state.streams.isNotEmpty && state.isLive) ...[
                        Expanded(
                          child: BlocBuilder<StringCubit, String>(
                            bloc: selectedStream,
                            builder: (context, streamState) {
                              return MyWebView(
                                "https://strikeout.ws/chelsea-w-vs-everton-w-stream-1",
                                // TODO
                                // streamState.isEmpty
                                //     ? state.streams.first.url
                                //     : streamState,
                                pullToRefreshController:
                                    _pullToRefreshController,
                                loadingColor: color,
                              );
                            },
                          ),
                        ),
                      ],
                      if (!state.isLive) ...[
                        Expanded(
                          child: Container(
                            color: color,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  if (state.startTimeDateTime != null) ...[
                                    EventDetailsDateCard(
                                      dateTime: state.startTimeDateTime!,
                                      onTimerEnd: () => _onRefresh(),
                                    ),
                                  ],
                                  if (state.isFinished) ...[
                                    GoogleText(
                                      localizationInstance.finished,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                  const SizedBox(height: 20.0),
                                  ListView.builder(
                                    itemCount: state.localizedTeams.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          EventDetailsTeamCard(
                                            team: state.localizedTeams[index],
                                            color: index == 1
                                                ? Colors.red
                                                : Colors.white,
                                          ),
                                          const SizedBox(height: 15.0),
                                        ],
                                      );
                                    },
                                  ),
                                  const SizedBox(height: 40.0),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    child: SizedBox(),
                                  ),
                                  const SizedBox(height: 20.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                      EventDetailsWriteCommentField(state.id),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
