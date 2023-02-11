import 'package:flutter/material.dart';
import 'package:watch_sports/providers/emoji/emoji_provider.dart';
import 'package:watch_sports/providers/logo/logo_provider.dart';

import '../../../../core/components/text/google_text.dart';
import '../../../../core/functions/size_config.dart';
import '../../../../setup.dart';
import 'tournament_logo.dart';

class TournamentIcon extends StatefulWidget {
  final String name;
  const TournamentIcon(this.name, {super.key});

  @override
  State<TournamentIcon> createState() => _TournamentIconState();
}

class _TournamentIconState extends State<TournamentIcon> {
  final emojiProvider = getIt<EmojiProvider>();
  final logoProvider = getIt<LogoProvider>();

  @override
  Widget build(BuildContext context) {
    final logoAsset = logoProvider.getAssetBy(widget.name);
    if (logoAsset != null) {
      return TournamentLogoAsset(logoAsset);
    }

    String emojiCode = emojiProvider.getEmojiByCountry(widget.name);

    if (emojiCode.isNotEmpty) {
      return GoogleText(
        emojiCode,
        fontSize: SizeConfig(context, 20)(),
      );
    }

    return const Icon(
      Icons.public,
      size: 24.0,
    );
  }
}
