import 'package:flutter/material.dart';

import '../../functions/size_config.dart';
import 'google_text.dart';

class EmptyText extends StatelessWidget {
  final String title;
  const EmptyText(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GoogleText(
        title,
        fontWeight: FontWeight.bold,
        fontSize: SizeConfig(context, 16.0)(),
      ),
    );
  }
}
