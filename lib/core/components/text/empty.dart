import 'package:flutter/material.dart';

import '../../functions/size_config.dart';
import 'google_text.dart';

class EmptyText extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final double? fontSize;
  const EmptyText(
    this.title, {
    super.key,
    this.fontWeight = FontWeight.bold,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GoogleText(
        title,
        fontWeight: fontWeight,
        fontSize: fontSize ?? SizeConfig(context, 16.0)(),
      ),
    );
  }
}
