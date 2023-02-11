import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_sports/core/extensions/string.dart';
import 'package:watch_sports/providers/logo/logo_assets.dart';

class TournamentLogoAsset extends StatelessWidget {
  final LogoAsset logoAsset;
  const TournamentLogoAsset(this.logoAsset, {super.key});

  @override
  Widget build(BuildContext context) {
    if (logoAsset.asset.isSvg) {
      return SvgPicture.asset(
        logoAsset.asset,
        width: 25.0,
      );
    }

    return Image.asset(
      logoAsset.asset,
      width: 25.0,
    );
  }
}
