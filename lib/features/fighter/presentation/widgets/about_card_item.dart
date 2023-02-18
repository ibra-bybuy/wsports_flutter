import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/size_config.dart';

class AboutCardItem extends StatefulWidget {
  final String label;
  final String value;
  final double? valueSize;
  final double? gapSize;
  const AboutCardItem({
    super.key,
    required this.label,
    required this.value,
    this.valueSize,
    this.gapSize,
  });

  @override
  State<AboutCardItem> createState() => _AboutCardItemState();
}

class _AboutCardItemState extends State<AboutCardItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        GoogleText(
          widget.label,
          color: Colors.grey,
          fontSize: SizeConfig(context, 12.0)(),
        ),
        SizedBox(height: widget.gapSize ?? 10.0),
        GoogleText(
          widget.value,
          color: Colors.white,
          fontSize: widget.valueSize ?? SizeConfig(context, 13.0)(),
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
