import 'package:flutter/material.dart';
import 'package:watch_sports/core/functions/date_functions.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../../../../core/components/text/google_text.dart';

class EventInfo extends StatelessWidget {
  final String eventName;
  final DateTime? eventTime;
  const EventInfo({
    super.key,
    required this.eventName,
    this.eventTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GoogleText(
          eventName,
          fontSize: 13.0,
        ),
        const SizedBox(height: 20.0),
        if (eventTime != null) ...[
          GoogleText(
            DateFunctions(passedDate: eventTime!).dayMonthYearHuman(),
            fontSize: 12.0,
            color: const Color.fromARGB(255, 134, 134, 134),
          ),
          const SizedBox(height: 10.0),
          GoogleText(
            DateFunctions(passedDate: eventTime!).hourMinute(),
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            color: Colors.black,
          ),
        ] else ...[
          GoogleText(
            localizationInstance.notApplicable,
            fontWeight: FontWeight.bold,
          ),
        ],
      ],
    );
  }
}
