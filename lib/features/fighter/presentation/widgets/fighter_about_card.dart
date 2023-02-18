import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:watch_sports/core/extensions/num.dart';
import 'package:watch_sports/core/extensions/string.dart';

import '../../../../core/functions/size_config.dart';
import '../../../../core/models/fighter.dart';
import '../../../../i18n/i18n.dart';
import 'about_card.dart';
import 'about_card_item.dart';
import 'about_country.dart';

class FighterAboutCard extends StatelessWidget {
  final Fighter fighter;
  const FighterAboutCard(this.fighter, {super.key});

  @override
  Widget build(BuildContext context) {
    return AboutCard(
      children: [
        if (fighter.country.isNotEmpty) ...[
          AboutCountry(fighter.country),
        ],
        if (fighter.birthDate.toDateTime != null) ...[
          AboutCardItem(
            label: localizationInstance.age,
            value:
                "${AgeCalculator.age(fighter.birthDate.toDateTime!).years} ${localizationInstance.years.toLowerCase()}",
            gapSize: SizeConfig(context, 14.0)(),
          ),
        ],
        if (fighter.weightPounds > 0) ...[
          AboutCardItem(
            label: localizationInstance.weight,
            value:
                "${fighter.weightPounds.poundsToKg().toInt()} ${localizationInstance.kg.toLowerCase()}",
            gapSize: SizeConfig(context, 14.0)(),
          ),
        ],
        if (fighter.heightInches > 0) ...[
          AboutCardItem(
            label: localizationInstance.height,
            value:
                "${fighter.heightInches.inchesToCm().toInt()} ${localizationInstance.cm.toLowerCase()}",
            gapSize: SizeConfig(context, 14.0)(),
          ),
        ],
        if (fighter.reach > 0) ...[
          AboutCardItem(
            label: localizationInstance.reach,
            value:
                "${fighter.reach.toInt()} ${localizationInstance.inch.toLowerCase()}",
            gapSize: SizeConfig(context, 14.0)(),
          ),
        ],
        if (fighter.weightPounds > 0) ...[
          AboutCardItem(
            label: localizationInstance.weight,
            value:
                "${fighter.weightPounds.toInt()} ${localizationInstance.poundsShort.toLowerCase()}",
            gapSize: SizeConfig(context, 14.0)(),
          ),
        ],
      ],
    );
  }
}
