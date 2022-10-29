import 'package:flutter/material.dart';

class ColorWrapper extends StatelessWidget {
  final Widget child;
  final Color color;
  const ColorWrapper({super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: child,
    );
  }
}
