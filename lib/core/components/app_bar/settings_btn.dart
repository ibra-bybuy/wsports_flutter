import 'package:flutter/material.dart';

import '../../../router/app_router.dart';
import '../../../setup.dart';

class AppBarSettingsBtn extends StatelessWidget {
  const AppBarSettingsBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings),
      onPressed: () {
        getIt<AppRouter>().push(const SettingsRoute());
      },
    );
  }
}
