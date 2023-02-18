import 'package:flutter/material.dart';

import '../../../../core/functions/size_config.dart';
import '../../../../i18n/i18n.dart';
import '../../../../providers/emoji/emoji_provider.dart';
import '../../../../setup.dart';
import 'about_card_item.dart';

class AboutCountry extends StatefulWidget {
  final String country;
  const AboutCountry(this.country, {super.key});

  @override
  State<AboutCountry> createState() => _AboutCountryState();
}

class _AboutCountryState extends State<AboutCountry> {
  final emojiProvider = getIt<EmojiProvider>();
  late String countryEmoji;

  @override
  void initState() {
    super.initState();
    countryEmoji = emojiProvider.getEmojiByCountry(widget.country);
  }

  @override
  Widget build(BuildContext context) {
    return AboutCardItem(
      label: localizationInstance.country,
      value: countryEmoji.isNotEmpty ? countryEmoji : widget.country,
      valueSize: countryEmoji.isNotEmpty ? SizeConfig(context, 25.0)() : null,
      gapSize: countryEmoji.isNotEmpty ? null : SizeConfig(context, 14.0)(),
    );
  }
}
