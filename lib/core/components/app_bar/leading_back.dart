import 'package:flutter/material.dart';

class AppBarLeadingBackBtn extends StatelessWidget {
  final Color? color;
  final void Function()? onPressed;
  const AppBarLeadingBackBtn({
    super.key,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: color ?? const Color(0XFFC4C4C4),
      ),
      onPressed: onPressed ??
          () {
            Navigator.of(context).pop();
          },
    );
  }
}
