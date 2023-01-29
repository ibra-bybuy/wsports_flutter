import 'package:flutter/material.dart';

class InkWellNoRipple extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  const InkWellNoRipple({Key? key, required this.child, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: child,
    );
  }
}
