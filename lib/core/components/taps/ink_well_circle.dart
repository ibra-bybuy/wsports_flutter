import 'package:flutter/material.dart';

class InkWellCircle extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final Color? color;
  final double padding;
  const InkWellCircle(
      {Key? key,
      this.color,
      required this.child,
      this.onTap,
      this.padding = 5.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      splashColor: color ?? Theme.of(context).primaryColor,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: child,
      ),
    );
  }
}
