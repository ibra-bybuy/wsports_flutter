import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/app_bar/leading_back.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../setup.dart';

class AppBarLeadingBackForceBtn extends StatelessWidget {
  const AppBarLeadingBackForceBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarLeadingBackBtn(
      onPressed: () {
        getIt<AppRouter>().replaceAll([const MainRoute()]);
        Navigator.of(context).pop();
      },
    );
  }
}
