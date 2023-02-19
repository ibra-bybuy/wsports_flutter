import 'package:flutter/material.dart';

import '../../../../core/components/text/google_text.dart';
import '../../../../core/functions/size_config.dart';
import '../../../../core/models/fighter.dart';
import '../../../../i18n/i18n.dart';
import 'chart.dart';

class StrikesStats extends StatelessWidget {
  final Fighter fighter;
  const StrikesStats(this.fighter, {super.key});

  @override
  Widget build(BuildContext context) {
    return FighterStatChart(
      fighter.allStrikes.toDouble(),
      fighter.landedStrikes.toDouble(),
      children: [
        GoogleText(
          "${localizationInstance.allStrikes}: ${fighter.allStrikes}",
          color: Colors.white,
          fontSize: SizeConfig(context, 11.0)(),
        ),
        const SizedBox(height: 10.0),
        GoogleText(
          "${localizationInstance.landedStrikes}: ${fighter.landedStrikes}",
          color: Colors.white,
          fontSize: SizeConfig(context, 11.0)(),
        ),
      ],
    );
  }
}
