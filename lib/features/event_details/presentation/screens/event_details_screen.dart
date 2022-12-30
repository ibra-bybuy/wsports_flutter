import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:watch_sports/core/models/event.dart';
import 'package:watch_sports/features/comment_section/presentation/screens/comment_section_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/components/app_bar/simple_app_bar.dart';
import '../../../../core/components/bottom_sheet/dragger.dart';
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

  @override
  void initState() {
    super.initState();

    commentSectionCubit.init(widget.event.id);
  }

  @override
  void dispose() {
    super.dispose();
    commentSectionCubit.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: SimpleAppBar(title: widget.event.name),
      body: true
          ? const WebView(
              initialUrl:
                  "https://sng.sportplus.live/football/championship/4049204/",
              javascriptMode: JavascriptMode.unrestricted,
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          if (widget.event.startTimeDateTime != null) ...[
                            EventDetailsDateCard(
                              dateTime: widget.event.startTimeDateTime!,
                            ),
                          ],
                          const SizedBox(height: 20.0),
                          ListView.builder(
                            itemCount: widget.event.teams.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  EventDetailsTeamCard(
                                    team: widget.event.teams[index],
                                    color:
                                        index == 1 ? Colors.red : Colors.white,
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
                InkWell(
                  onTap: () {
                    showBarModalBottomSheet(
                      context: context,
                      builder: (context) =>
                          CommentSectionScreen(eventId: widget.event.id),
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
  }
}
