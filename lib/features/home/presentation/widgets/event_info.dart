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
  const EventInfo({
    super.key,
    required this.eventName,
    this.eventTime,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isTimePassed =
        eventTime != null && DateTime.now().isAfter(eventTime!) ? true : false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GoogleText(
          eventName,
          fontSize: 13.0,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20.0),
        if (eventTime != null) ...[
          GoogleText(
            DateFunctions(passedDate: eventTime!).dayMonthYearHuman(),
            fontSize: 12.0,
            color: const Color.fromARGB(255, 134, 134, 134),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0),
          isTimePassed
              ? AnimatedText(
                  [
                    const AnimatedTextModel("LIVE"),
                    AnimatedTextModel(
                        DateFunctions(passedDate: eventTime!).hourMinute())
                  ],
                  onTap: onTap,
                )
              : GoogleText(
                  DateFunctions(passedDate: eventTime!).hourMinute(),
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: isTimePassed ? Colors.red : Colors.black,
                  textAlign: TextAlign.center,
                ),
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
