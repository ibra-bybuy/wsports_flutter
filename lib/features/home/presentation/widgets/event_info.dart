import 'package:flutter/material.dart';
import 'package:watch_sports/core/functions/date_functions.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../../../../core/components/text/animated_text/animated_text.dart';
import '../../../../core/components/text/animated_text/animated_text_model.dart';
import '../../../../core/components/text/google_text.dart';

class EventInfo extends StatelessWidget {
  final String eventName;
  final DateTime? eventTime;
  final void Function()? onTap;
  final bool isLive;
  final bool isFinished;
  final Color? dateColor;
  final Color? hoursColor;
  const EventInfo({
    super.key,
    this.eventName = "",
    this.eventTime,
    this.onTap,
    this.isLive = false,
    this.isFinished = false,
    this.dateColor,
    this.hoursColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (eventName.isNotEmpty) ...[
          GoogleText(
            eventName,
            fontSize: 13.0,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),
        ],
        if (eventTime != null) ...[
          if (!isLive) ...[
            GoogleText(
              DateFunctions(passedDate: eventTime!).dayMonthYearHuman(),
              fontSize: 12.0,
              color: dateColor,
              textAlign: TextAlign.center,
            ),
          ],
          const SizedBox(height: 10.0),
          if (isLive) ...[
            AnimatedText(
              [
                const AnimatedTextModel("LIVE"),
                AnimatedTextModel(
                    DateFunctions(passedDate: eventTime!).hourMinute())
              ],
              onTap: onTap,
            )
          ] else if (isFinished) ...[
            GoogleText(
              localizationInstance.finished,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: dateColor ?? Colors.grey,
              textAlign: TextAlign.center,
            )
          ] else ...[
            GoogleText(
              DateFunctions(passedDate: eventTime!).hourMinute(),
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: hoursColor ??
                  Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.color
                      ?.withOpacity(0.8),
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
