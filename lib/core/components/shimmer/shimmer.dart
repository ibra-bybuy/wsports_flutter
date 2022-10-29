import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CustomShimmer extends StatelessWidget {
  final Widget child;
  const CustomShimmer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      color: Colors.grey[400]!,
      colorOpacity: 1,
      child: child,
    );
  }
}
