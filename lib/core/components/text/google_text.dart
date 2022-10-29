import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  const GoogleText(
    this.text, {
    super.key,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
