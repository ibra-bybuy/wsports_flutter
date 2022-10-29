import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  final BorderRadius? borderRadius;
  final ImageProvider<Object> image;
  const BannerImage({Key? key, this.borderRadius, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: DecorationImage(
          image: image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
