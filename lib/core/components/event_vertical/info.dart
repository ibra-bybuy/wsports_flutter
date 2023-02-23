import 'package:flutter/material.dart';
import 'package:watch_sports/core/functions/date_functions.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../../../../core/components/text/animated_text/animated_text.dart';
import '../../../../core/components/text/animated_text/animated_text_model.dart';
import '../../../../core/components/text/google_text.dart';

class EventVerticalCardInfo extends StatelessWidget {
  final DateTime? eventTime;
  final bool isLive;
  final bool isFinished;
  final String eventCurrentTime;
  const EventVerticalCardInfo({
    super.key,
    this.eventTime,
    this.isLive = false,
    this.isFinished = false,
    this.eventCurrentTime = "",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (eventTime != null) ...[
          if (!isLive && !DateFunctions(passedDate: eventTime!).isToday()) ...[
            GoogleText(
              DateFunctions(passedDate: eventTime!).dayMonthHuman(),
              fontSize: 12.0,
              color: const Color.fromARGB(255, 134, 134, 134),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 5.0),
          ],
          const SizedBox(height: 10.0),
          if (isLive) ...[
            AnimatedText(
              [
                AnimatedTextModel("LIVE $eventCurrentTime".trim()),
              ],
            ),
          ] else if (isFinished) ...[
            GoogleText(
              localizationInstance.finished,
              fontWeight: FontWeight.bold,
              fontSize: 13.5,
              color: Colors.grey,
              textAlign: TextAlign.center,
            )
          ] else ...[
            GoogleText(
              DateFunctions(passedDate: eventTime!).hourMinute(),
              fontWeight: FontWeight.bold,
              fontSize: 13.5,
              color: Colors.black87,
              textAlign: TextAlign.center,
            )
          ]
        ] else ...[
          GoogleText(
            localizationInstance.notApplicable,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}
