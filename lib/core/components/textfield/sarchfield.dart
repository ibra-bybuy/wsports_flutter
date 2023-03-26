import 'package:flutter/material.dart';

import '../../../i18n/i18n.dart';
import 'textfield.dart';

class SearchField extends StatelessWidget {
  final TextEditingController? controller;
  final bool autofocus;
  final void Function(String)? onChanged;
  const SearchField({
    super.key,
    this.controller,
    this.autofocus = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      prefixIcon: Icon(
        Icons.search,
        color: Theme.of(context).iconTheme.color,
      ),
      hint: localizationInstance.searchHint,
      autofocus: autofocus,
      onChanged: onChanged,
    );
  }
}
