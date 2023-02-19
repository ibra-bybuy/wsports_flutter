import 'package:flutter/material.dart';

import '../../../../core/functions/size_config.dart';
import '../../../../core/models/fighter.dart';
import '../../../../i18n/i18n.dart';
import 'about_card.dart';
import 'about_card_item.dart';

class FighterWinsStats extends StatelessWidget {
  final Fighter fighter;
  const FighterWinsStats(this.fighter, {super.key});

  @override
  Widget build(BuildContext context) {
    return AboutCard(
      children: [
        AboutCardItem(
          label: localizationInstance.ko,
          value: fighter.winsByKo.toString(),
          gapSize: SizeConfig(context, 14.0)(),
        ),
        AboutCardItem(
          label: localizationInstance.sub,
          value: fighter.winsBySub.toString(),
          gapSize: SizeConfig(context, 14.0)(),
        ),
        AboutCardItem(
          label: localizationInstance.dec,
          value: fighter.winsByDec.toString(),
          gapSize: SizeConfig(context, 14.0)(),
        ),
      ],
    );
  }
}
