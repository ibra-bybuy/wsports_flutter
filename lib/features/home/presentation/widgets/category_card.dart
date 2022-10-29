import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/size_config.dart';

class HomeCategoryCard extends StatelessWidget {
  final IconData? icon;
  final String title;
  final bool enabled;
  final void Function()? onTap;
  const HomeCategoryCard({
    super.key,
    required this.icon,
    required this.title,
    this.enabled = false,
    this.onTap,
  }) : assert(icon != null);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: enabled ? const Color(0XFF000000) : const Color(0XFFF3F4F5),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 22.0,
              color: enabled ? Colors.white : Colors.black,
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: GoogleText(
                title,
                fontSize: SizeConfig(context, 12)(),
                maxLines: 1,
                fontWeight: FontWeight.bold,
                color: enabled ? Colors.white : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
