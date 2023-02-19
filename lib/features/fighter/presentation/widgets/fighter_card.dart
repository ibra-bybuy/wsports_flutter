import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/listview/listview_builder.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/cubits/custom/bool_cubit/bool_cubit.dart';
import 'package:watch_sports/core/functions/size_config.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../../../../core/models/fight.dart';
import '../../../../core/models/fighter.dart';
import '../../../home/presentation/widgets/event_avatar.dart';

import 'fight_card.dart';
import 'fighter_about_card.dart';
import 'fighter_wins_stats.dart';
import 'header.dart';
import 'strikes_stats.dart';
import 'takedown_stats.dart';

class FighterCard extends StatefulWidget {
  final Fighter fighter;
  const FighterCard(
    this.fighter, {
    super.key,
  });

  @override
  State<FighterCard> createState() => _FighterCardState();
}

class _FighterCardState extends State<FighterCard> {
  final statsShown = BoolCubit(false);

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = 15.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 25.0),
        if (widget.fighter.previewImage.isNotEmpty) ...[
          Center(
            child: EventAvatar(
              fixedSize: SizeConfig(context, 130.0)(),
              imageUrl: widget.fighter.previewImage,
            ),
          ),
          const SizedBox(height: 25.0),
        ],
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: GoogleText(
            widget.fighter.nameWithNickname,
            color: Colors.white,
            fontSize: SizeConfig(context, 15.0)(),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          width: double.infinity,
          child: GoogleText(
            widget.fighter.formattedRecord,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig(context, 15.0)(),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: FighterAboutCard(widget.fighter),
        ),
        const SizedBox(height: 30.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: BlocBuilder<BoolCubit, bool>(
            bloc: statsShown,
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FighterHeader(
                    localizationInstance.stats,
                    onPressed: () {
                      statsShown.set(!state);
                    },
                    shown: state,
                  ),
                  if (state) ...[
                    const SizedBox(height: 30.0),
                    FighterWinsStats(widget.fighter),
                    const SizedBox(height: 30.0),
                    StrikesStats(widget.fighter),
                    const SizedBox(height: 30.0),
                    TakeDownStats(widget.fighter),
                  ],
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 30.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: CustomListViewBuilder<Fight>(
            items: widget.fighter.fightHistory,
            itemBuilder: (context, index, item) {
              return FightCard(
                item,
              );
            },
          ),
        ),
        const SizedBox(height: 30.0),
      ],
    );
  }
}
