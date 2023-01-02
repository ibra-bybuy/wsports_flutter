import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/cubits/custom/event_cubit/event_cubit.dart';
import 'package:watch_sports/core/models/event.dart';
import 'package:watch_sports/features/comment_section/presentation/screens/comment_section_screen.dart';
import 'package:watch_sports/features/event_details/presentation/cubits/event_details_cubit.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../../../../core/components/app_bar/simple_app_bar.dart';
import '../../../../core/components/bottom_sheet/dragger.dart';
import '../../../../core/components/refresh/refresher.dart';
import '../../../../core/components/webview/webview.dart';
import '../../../../setup.dart';
import '../../../comment_section/presentation/cubits/comment_section_cubit.dart';
import '../../../comment_section/presentation/widgets/comment_field.dart';
import '../widgets/date_card.dart';
import '../widgets/team_card.dart';

class EventDetailsScreen extends StatefulWidget {
  final Event event;
  const EventDetailsScreen({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  final horizontalPadding = 25.0;
  final commentSectionCubit = getIt<CommentSectionCubit>();

  final uiCubit = getIt<EventDetailsCubit>();
  final _refreshController = RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    uiCubit.setEvent(widget.event);
    commentSectionCubit.init(widget.event.id);
  }

  @override
  void dispose() {
    super.dispose();
    commentSectionCubit.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Refresher(
      controller: _refreshController,
      onRefresh: () async {
        await uiCubit.call(widget.event.id);
        _refreshController.refreshCompleted();
      },
      child: BlocBuilder<EventCubit, Event>(
        bloc: uiCubit.eventCubit,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: SimpleAppBar(title: state.name),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (true) ...[
                  Expanded(
                    child: MyWebView(state.streams.first.url),
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
                              itemCount: state.teams.length,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    EventDetailsTeamCard(
                                      team: state.teams[index],
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
                InkWell(
                  onTap: () {
                    showBarModalBottomSheet(
                      context: context,
                      builder: (context) =>
                          CommentSectionScreen(eventId: state.id),
                      barrierColor: Colors.transparent,
                    );
                  },
                  child: IgnorePointer(
                    child: SafeArea(
                      child: Column(
                        children: const [
                          SizedBox(height: 15.0),
                          BottomSheetDragger(),
                          SizedBox(height: 15.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: CommentField(),
                          ),
                          SizedBox(height: 15.0)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
