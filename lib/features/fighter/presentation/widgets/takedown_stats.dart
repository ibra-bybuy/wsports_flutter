import 'package:flutter/material.dart';

import '../../../../core/components/text/google_text.dart';
import '../../../../core/functions/size_config.dart';
import '../../../../core/models/fighter.dart';
import '../../../../i18n/i18n.dart';
import 'chart.dart';

class TakeDownStats extends StatelessWidget {
  final Fighter fighter;
  const TakeDownStats(this.fighter, {super.key});

  @override
  Widget build(BuildContext context) {
    return FighterStatChart(
      fighter.allTakeDowns.toDouble(),
      fighter.landedTakeDowns.toDouble(),
      children: [
        GoogleText(
          "${localizationInstance.allTakeDowns}: ${fighter.allTakeDowns}",
          color: Colors.white,
          fontSize: SizeConfig(context, 11.0)(),
        ),
        const SizedBox(height: 10.0),
        GoogleText(
          "${localizationInstance.landedTakeDowns}: ${fighter.landedTakeDowns}",
          color: Colors.white,
          fontSize: SizeConfig(context, 11.0)(),
        ),
      ],
    );
  }
}
