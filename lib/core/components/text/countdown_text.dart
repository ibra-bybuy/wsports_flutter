import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';

import '../../../i18n/i18n.dart';

class CountDownText extends StatelessWidget {
  final int? sec;
  final int? min;
  final int? hours;
  final int? days;
  const CountDownText({
    super.key,
    this.sec,
    this.min,
    this.hours,
    this.days,
  });

  @override
  Widget build(BuildContext context) {
    List<int> txts = [];
    if ((hours ?? 0) > 0) {
      txts.add(hours!);
    }
    txts.add(min ?? 0);
    txts.add(sec ?? 0);

    String txt = txts.join(":");
    String daysStr = "";
    if ((days ?? 0) > 0) {
      daysStr = "$days${localizationInstance.daysCompact.toLowerCase()}";
    }

    return GoogleText(
      formatText(daysStr, txt),
      color: Colors.white,
      fontSize: 17.0,
      fontWeight: FontWeight.bold,
    );
  }

  String formatText(String days, String txt) {
    final splitted = txt.split(":");
    List<String> newStr = [];
    for (final str in splitted) {
      if (str.length == 1) {
        newStr.add("0$str");
      } else {
        newStr.add(str);
      }
    }

    return "$days ${newStr.join(":")}";
  }
}
