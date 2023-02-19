import 'package:flutter/material.dart';

import '../../../../core/components/text/google_text.dart';
import '../../../../core/functions/date_functions.dart';
import '../../../../core/models/fight.dart';
import '../../../../i18n/i18n.dart';

class FightInfoCard extends StatelessWidget {
  final Fight fight;
  const FightInfoCard(this.fight, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (fight.dateToDateTime != null) ...[
          GoogleText(
            DateFunctions(passedDate: fight.dateToDateTime!)
                .dayMonthYearNumbers(),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ],
        if (fight.lastRound > 0) ...[
          const SizedBox(height: 10.0),
          GoogleText(
            "${localizationInstance.round}: ${fight.lastRound}",
            color: Colors.white,
          )
        ],
        if (fight.time.isNotEmpty) ...[
          const SizedBox(height: 10.0),
          GoogleText(
            fight.time,
            color: Colors.white,
          )
        ],
        if (fight.byMethod.isNotEmpty) ...[
          const SizedBox(height: 10.0),
          GoogleText(
            fight.localizeMethod,
            color: Colors.white,
          )
        ],
      ],
    );
  }
}
