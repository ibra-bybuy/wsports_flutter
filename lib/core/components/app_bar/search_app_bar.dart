import 'package:flutter/material.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../textfield/textfield.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      prefixIcon: const Icon(
        Icons.search,
        color: Colors.black,
      ),
      hint: localizationInstance.searchHint,
    );
  }
}
