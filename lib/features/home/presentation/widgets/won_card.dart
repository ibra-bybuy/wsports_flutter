import 'package:flutter/material.dart';

import '../../../../core/components/text/google_text.dart';
import '../../../../core/functions/size_config.dart';
import '../../../../i18n/i18n.dart';

class WonCard extends StatelessWidget {
  const WonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
      child: GoogleText(
        localizationInstance.win,
        color: Colors.white,
        fontSize: SizeConfig(context, 9.0)(),
      ),
    );
  }
}
