import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/size_config.dart';

class FighterHeader extends StatelessWidget {
  final String title;
  final bool shown;
  final void Function()? onPressed;
  const FighterHeader(
    this.title, {
    super.key,
    this.shown = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GoogleText(
                title,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig(context, 18.0)(),
                textAlign: TextAlign.start,
              ),
            ),
            Icon(
              shown ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
