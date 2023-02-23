import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';

import 'animated_text_model.dart';

class AnimatedText extends StatelessWidget {
  final List<AnimatedTextModel> items;
  final void Function()? onTap;
  const AnimatedText(
    this.items, {
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (kDebugMode && Platform.isIOS) {
      return GoogleText(
        items.map((e) => e.title).join(" "),
        color: Colors.red,
        fontSize: 13.5,
      );
    }

    return AnimatedTextKit(
      animatedTexts: items
          .map(
            (e) => ColorizeAnimatedText(
              e.title,
              textStyle: e.style ??
                  const TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.bold,
                  ),
              speed: const Duration(milliseconds: 700),
              colors: [
                Colors.red,
                const Color.fromARGB(255, 35, 191, 100),
              ],
            ),
          )
          .toList(),
      pause: const Duration(milliseconds: 100),
      repeatForever: true,
      onTap: onTap,
    );
  }
}
