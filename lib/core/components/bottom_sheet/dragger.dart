import 'package:flutter/material.dart';
import 'package:watch_sports/core/functions/size_config.dart';

class BottomSheetDragger extends StatelessWidget {
  const BottomSheetDragger({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig(context, 36.0)(),
      height: SizeConfig(context, 5.0)(),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }
}
