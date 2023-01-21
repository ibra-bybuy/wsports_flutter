import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/platform_functions.dart';
import 'package:watch_sports/core/functions/size_config.dart';

class HomeContainerTitle extends StatelessWidget {
  final String title;
  const HomeContainerTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.4,
      child: SizedBox(
        width: double.infinity,
        child: GoogleText(
          title,
          color: Colors.black,
          fontSize: SizeConfig(context, 22.0)(),
          fontWeight: FontWeight.bold,
          textAlign: isDesktop ? TextAlign.center : TextAlign.start,
        ),
      ),
    );
  }
}
