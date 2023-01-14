import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleStyle {
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const GoogleStyle({
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  TextStyle roboto() {
    return GoogleFonts.roboto(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
