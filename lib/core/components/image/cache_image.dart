import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/file.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_sports/core/extensions/string.dart';

import '../../../providers/cache_manager/cache_manager.dart';
import '../../../setup.dart';

class CacheImage extends StatefulWidget {
  final String url;
  final Widget Function(BuildContext, String)? placeholder;
  final Widget Function(BuildContext, String, dynamic)? errorWidget;
  final Widget Function(BuildContext, ImageProvider<Object>)? imageBuilder;
  final Widget Function(BuildContext, File)? onSvg;
  final Duration fadeInDuration;
  final double? height;
  final BoxFit? fit;
  const CacheImage(
    this.url, {
    super.key,
    this.placeholder,
    this.errorWidget,
    this.imageBuilder,
    this.onSvg,
    this.fadeInDuration = const Duration(milliseconds: 100),
    this.height,
    this.fit,
  });

  @override
  State<CacheImage> createState() => _CacheImageState();
}

class _CacheImageState extends State<CacheImage> {
  final cacheManager = getIt<CacheManager>().def;
  @override
  Widget build(BuildContext context) {
    if (widget.url.isSvg) {
      return FutureBuilder<File>(
        future: cacheManager.getSingleFile(widget.url),
        builder: (context, file) {
          if (file.data != null) {
            return SvgPicture.file(
              file.data!,
              fit: widget.fit ?? BoxFit.contain,
              height: widget.height,
            );
          }

          return const SizedBox();
        },
      );
    }

    return CachedNetworkImage(
      imageUrl: widget.url,
      fadeInDuration: widget.fadeInDuration,
      placeholder: widget.placeholder,
      errorWidget: widget.errorWidget,
      imageBuilder: widget.imageBuilder,
      height: widget.height,
      fit: widget.fit,
    );
  }
}
