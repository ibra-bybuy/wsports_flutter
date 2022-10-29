import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/date_functions.dart';
import 'package:watch_sports/core/functions/size_config.dart';

class EventDetailsDateCard extends StatelessWidget {
  final DateTime dateTime;
  const EventDetailsDateCard({super.key, required this.dateTime});

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
          )
        ],
      ),
    );
  }
}
