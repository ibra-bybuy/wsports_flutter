import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/textfield/textfield.dart';
import 'package:watch_sports/i18n/i18n.dart';

class CommentField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final bool autofocus;
  const CommentField({
    super.key,
    this.textEditingController,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: textEditingController,
      hint: "${localizationInstance.writeCommentHint}...",
      borderColor: Colors.black,
      autofocus: autofocus,
    );
  }
}
