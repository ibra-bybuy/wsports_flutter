import 'package:flutter/material.dart';
import 'package:watch_sports/core/functions/size_config.dart';

class MaxWidthSetter extends StatelessWidget {
  final Widget child;
  final double width;
  const MaxWidthSetter({
    super.key,
    required this.child,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: SizeConfig(context, width)(),
      ),
      child: child,
    );
  }
}
