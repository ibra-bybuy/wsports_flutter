import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/size_config.dart';
import 'package:watch_sports/core/models/event.dart';

import '../../../../../features/home/presentation/widgets/event_info.dart';

class EventNameCard extends StatelessWidget {
  final Event event;
  final void Function()? onPressed;
  const EventNameCard(
    this.event, {
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0XFFE4E5E5),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 21, 111, 184),
                Color.fromARGB(255, 162, 26, 17),
              ],
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 30.0,
          ),
          child: Column(
            children: [
              GoogleText(
                event.name,
                textAlign: TextAlign.center,
                fontSize: SizeConfig(context, 20.0)(),
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              const SizedBox(height: 10.0),
              EventInfo(
                eventTime: event.startTimeDateTime,
                isLive: event.isLive,
                isFinished: event.isFinished,
                dateColor: Colors.white,
                hoursColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
