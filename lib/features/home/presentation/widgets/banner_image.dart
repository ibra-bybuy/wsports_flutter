import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/size_config.dart';

class BannerImage extends StatelessWidget {
  final BorderRadius? borderRadius;
  final ImageProvider<Object> image;
  final String? centerText;
  const BannerImage({
    Key? key,
    this.borderRadius,
    required this.image,
    this.centerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            image: DecorationImage(
              image: image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        if (centerText != null) ...[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  bottomLeft: borderRadius?.bottomLeft ?? Radius.zero,
                  bottomRight: borderRadius?.bottomRight ?? Radius.zero,
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: GoogleText(
                centerText!,
                color: Colors.white,
                textAlign: TextAlign.center,
                fontSize: SizeConfig(context, 14.0)(),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
