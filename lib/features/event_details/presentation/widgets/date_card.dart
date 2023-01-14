import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/date_functions.dart';
import 'package:watch_sports/core/functions/size_config.dart';

import '../../../../core/components/text/google_style.dart';

class EventDetailsDateCard extends StatelessWidget {
  final DateTime dateTime;
  final void Function()? onTimerEnd;
  const EventDetailsDateCard({
    super.key,
    required this.dateTime,
    this.onTimerEnd,
  });

  @override
  Widget build(BuildContext context) {
    final dateFunctions = DateFunctions(passedDate: dateTime);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GoogleText(
            dateFunctions.hourMinute(),
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig(context, 30)(),
          ),
          const SizedBox(height: 10.0),
          Opacity(
            opacity: 0.7,
            child: GoogleText(
              dateFunctions.dayMonthYear(),
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10.0),
          CountdownTimer(
            endTime: dateTime.millisecondsSinceEpoch,
            onEnd: onTimerEnd,
            textStyle: const GoogleStyle(
              color: Colors.white,
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ).roboto(),
          ),
        ],
      ),
    );
  }
}
