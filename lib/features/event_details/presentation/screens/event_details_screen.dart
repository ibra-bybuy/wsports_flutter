import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/cubits/custom/event_cubit/event_cubit.dart';
import 'package:watch_sports/core/cubits/custom/string_cubit.dart/string_cubit.dart';
import 'package:watch_sports/core/models/event.dart';
import 'package:watch_sports/features/event_details/presentation/cubits/event_details_cubit.dart';
import 'package:watch_sports/i18n/i18n.dart';
import '../../../../core/components/app_bar/simple_app_bar.dart';
import '../../../../core/components/btn/popup_btns.dart';
import '../../../../core/components/refresh/refresher.dart';
import '../../../../core/components/webview/webview.dart';
import '../../../../setup.dart';
import '../../../comment_section/presentation/cubits/comment_section_cubit.dart';
import '../widgets/date_card.dart';
import '../widgets/event_notification_builder.dart';
import '../widgets/team_card.dart';
import '../widgets/write_comment.dart';

class EventDetailsScreen extends StatefulWidget {
  final Event event;
  const EventDetailsScreen({Key? key, required this.event}) : super(key: key);

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  final horizontalPadding = 25.0;
  final commentSectionCubit = getIt<CommentSectionCubit>();
  final uiCubit = getIt<EventDetailsCubit>();
  final _refreshController = RefreshController(initialRefresh: false);
  final selectedStream = StringCubit();
  late final PullToRefreshController _pullToRefreshController;

  @override
  void initState() {
    super.initState();
    uiCubit.setEvent(widget.event);
    commentSectionCubit.init(widget.event.id);

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
    await uiCubit.call(widget.event.id);
  }

  @override
  Widget build(BuildContext context) {
    return Refresher(
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
            backgroundColor: Colors.black,
            appBar: SimpleAppBar(
              title: state.name,
              actions: !state.isStarted
                  ? [
                      EventNotificationBuilder([state]),
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          pullToRefreshController: _pullToRefreshController,
                        );
                      },
                    ),
                  ),
                ],
                if (!state.isLive) ...[
                  Expanded(
                    child: Container(
                      color: Colors.black,
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
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
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
    );
  }
}
