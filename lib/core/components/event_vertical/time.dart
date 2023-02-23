import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/size_config.dart';

class EventVerticalCardTime extends StatelessWidget {
  final String str;
  final Color? color;
  const EventVerticalCardTime(
    this.str, {
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig(context, 30.0).getProportionateScreenWidth,
      child: GoogleText(
        str,
        color: color,
        fontSize: SizeConfig(context, 10.0).getProportionateScreenWidth,
        textAlign: TextAlign.center,
      ),
    );
  }
}
