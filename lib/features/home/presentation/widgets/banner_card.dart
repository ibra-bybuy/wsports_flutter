import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/components/shimmer/shimmer.dart';
import '../../../../core/constants/png_pictures.dart';
import '../../../../core/models/banner.dart' as my;
import 'banner_image.dart';

class HomeScreenBannerCard extends StatefulWidget {
  final my.Banner item;
  const HomeScreenBannerCard({super.key, required this.item});

  @override
  State<HomeScreenBannerCard> createState() => _HomeScreenBannerCardState();
}

class _HomeScreenBannerCardState extends State<HomeScreenBannerCard> {
  final _borderRadius = BorderRadius.circular(18.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: _borderRadius,
      ),
      constraints: const BoxConstraints(maxHeight: double.infinity),
      child: CachedNetworkImage(
        imageUrl: widget.item.imageUrl,
        fadeInDuration: const Duration(milliseconds: 100),
        placeholder: (context, str) {
          return CustomShimmer(
            child: BannerImage(
              borderRadius: _borderRadius,
              image: const AssetImage(PngPictures.bannerEample),
            ),
          );
        },
        errorWidget: (context, _, __) {
          return BannerImage(
            borderRadius: _borderRadius,
            image: const AssetImage(PngPictures.bannerEample),
          );
        },
        imageBuilder: (context, imageProvider) {
          return BannerImage(
            borderRadius: _borderRadius,
            image: imageProvider,
          );
        },
      ),
    );
  }
}
