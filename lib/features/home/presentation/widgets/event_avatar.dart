import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_sports/core/constants/svg_pictures.dart';

import '../../../../core/components/image/cache_image.dart';
import '../../../../core/components/shimmer/shimmer.dart';
import '../../../../core/functions/size_config.dart';
import 'won_card.dart';

class EventAvatar extends StatelessWidget {
  final String imageUrl;
  final double? fixedSize;
  final bool showWon;
  const EventAvatar({
    super.key,
    required this.imageUrl,
    this.fixedSize,
    this.showWon = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = fixedSize ?? SizeConfig(context, 90.0)();
    const borderRadius = BorderRadius.all(Radius.circular(60.0));
    return Stack(
      children: [
        CacheImage(
          imageUrl,
          height: size,
          fadeInDuration: const Duration(milliseconds: 20),
          fit: BoxFit.fitWidth,
          errorWidget: (context, err, _) {
            return SizedBox(
              width: size,
              child: SvgPicture.asset(SvgPictures.teamError),
            );
          },
          placeholder: (context, str) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: borderRadius,
              ),
              child: CustomShimmer(
                child: SizedBox(
                  height: size,
                  width: size,
                ),
              ),
            );
          },
          imageBuilder: (context, image) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.fitHeight,
                ),
              ),
              width: size,
            );
          },
        ),
        if (showWon) ...[
          const Positioned(
            bottom: 0,
            right: 0,
            child: WonCard(),
          ),
        ],
      ],
    );
  }
}
