import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:watch_sports/core/components/adaptive/max_with_setter.dart';
import 'package:watch_sports/core/components/listview/listview_builder.dart';
import 'package:watch_sports/core/cubits/cached/event_list_cubit/event_list_state.dart';
import 'package:watch_sports/core/cubits/custom/event_cubit/event_cubit.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/features/tournament_details/presentation/widgets/tournament_event_card.dart';
import '../../../../core/components/app_bar/simple_app_bar.dart';
import '../../../../core/components/btn/popup_btns.dart';
import '../../../../core/components/refresh/refresher.dart';
import '../../../../core/components/text/google_text.dart';
import '../../../../core/components/webview/webview.dart';
import '../../../../core/cubits/cached/event_list_cubit/event_list_cubit.dart';
import '../../../../core/cubits/custom/string_cubit.dart/string_cubit.dart';
import '../../../../core/models/event.dart';
import '../../../../i18n/i18n.dart';
import '../../../../setup.dart';
import '../../../comment_section/presentation/cubits/comment_section_cubit.dart';
import '../../../event_details/presentation/widgets/date_card.dart';
import '../../../event_details/presentation/widgets/event_notification_builder.dart';
import '../../../event_details/presentation/widgets/write_comment.dart';
import '../cubits/tournament_details_cubit.dart';

class TournamentDetailsScreen extends StatefulWidget {
  final List<Event> events;
  const TournamentDetailsScreen({
    Key? key,
    required this.events,
  }) : super(key: key);

  @override
  State<TournamentDetailsScreen> createState() =>
      _TournamentDetailsScreenState();
}

class _TournamentDetailsScreenState extends State<TournamentDetailsScreen> {
  final horizontalPadding = 25.0;
  final uiCubit = getIt<TournamentDetailsCubit>();
  final commentSectionCubit = getIt<CommentSectionCubit>();
  final _refreshController = RefreshController(initialRefresh: false);
  final selectedStream = StringCubit();

  @override
  void initState() {
    super.initState();

    final event =
        widget.events.isNotEmpty ? widget.events.first : const Event();
    uiCubit.setEvents(event, widget.events);
    commentSectionCubit.init(event.name);

    uiCubit.load();
  }

  @override
  void dispose() {
    super.dispose();
    commentSectionCubit.dispose();
  }

  Future<void> _onRefresh() async {
    await uiCubit.load();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventListCubit, EventListState>(
      bloc: uiCubit.eventListCubit,
      builder: (context, eventListState) {
        return BlocBuilder<EventCubit, Event>(
          bloc: uiCubit.eventCubit,
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.black,
              appBar: SimpleAppBar(
                title: state.name,
                actions: !state.isStarted
                    ? [
                        EventNotificationBuilder(eventListState.events),
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
                        : null,
              ),
              body: Column(
                children: [
                  if (state.streams.isNotEmpty && state.isLive) ...[
                    Expanded(
                      child: BlocBuilder<StringCubit, String>(
                        bloc: selectedStream,
                        builder: (context, streamState) {
                          return MyWebView(
                            streamState.isEmpty
                                ? state.streams.first.url
                                : streamState,
                          );
                        },
                      ),
                    ),
                  ],
                  if (!state.isLive) ...[
                    Expanded(
                      child: MaxWidthSetter(
                        width: 500.0,
                        child: Center(
                          child: Refresher(
                            controller: _refreshController,
                            onRefresh: () async {
                              await _onRefresh();
                              _refreshController.refreshCompleted();
                            },
                            child: SingleChildScrollView(
                              child: Container(
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    if (state.startTimeDateTime != null) ...[
                                      EventDetailsDateCard(
                                        dateTime: state.startTimeDateTime!,
                                        onTimerEnd: _onRefresh,
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
                                    BlocBuilder<TournamentDetailsCubit,
                                        FetchState>(
                                      bloc: uiCubit,
                                      builder: (context, state) {
                                        if (state is FetchLoading &&
                                            uiCubit.eventListCubit.events
                                                .isEmpty) {
                                          return const CircularProgressIndicator(
                                            color: Colors.green,
                                          );
                                        }

                                        return CustomListViewBuilder<Event>(
                                          items: eventListState.events,
                                          itemBuilder: (context, _, item) {
                                            return TournamentEventCard(item);
                                          },
                                        );
                                      },
                                    ),
                                    const SizedBox(height: 20.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  EventDetailsWriteCommentField(state.name),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
