import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';

class PopupBtns extends StatelessWidget {
  final List<PopupBtnModel> titles;
  final void Function(String)? onSelected;
  final bool addKey;
  const PopupBtns({
    super.key,
    required this.titles,
    this.onSelected,
    this.addKey = false,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        int i = 0;
        return titles.map(
          (e) {
            i++;
            return PopupMenuItem<String>(
              value: e.value,
              child: GoogleText(
                "${e.label} ${addKey ? i : ""}".trim(),
              ),
            );
          },
        ).toList();
      },
      onSelected: (value) {
        onSelected?.call(value);
      },
    );
  }
}

class PopupBtnModel {
  final String value;
  final String label;

  const PopupBtnModel(this.value, this.label);
}
