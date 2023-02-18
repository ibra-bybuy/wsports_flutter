import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/size_config.dart';

import '../../../../core/models/fighter.dart';
import '../../../home/presentation/widgets/event_avatar.dart';
import 'fighter_about_card.dart';

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
  @override
  Widget build(BuildContext context) {
    const horizontalPadding = 15.0;

    return Column(
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: GoogleText(
            widget.fighter.nameWithNickname,
            color: Colors.white,
            fontSize: SizeConfig(context, 15.0)(),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10.0),
        GoogleText(
          widget.fighter.formattedRecord,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: SizeConfig(context, 15.0)(),
        ),
        const SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: FighterAboutCard(widget.fighter),
        ),
      ],
    );
  }
}
