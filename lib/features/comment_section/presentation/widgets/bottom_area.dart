import 'package:flutter/material.dart';

import 'comment_field.dart';

class CommentBottomArea extends StatelessWidget {
  final TextEditingController textEditingController;
  final void Function()? onSend;
  const CommentBottomArea({
    super.key,
    required this.textEditingController,
    this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
      ),
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 15.0),
          Expanded(
            child: CommentField(
              autofocus: true,
              textEditingController: textEditingController,
            ),
          ),
          const SizedBox(width: 15.0),
          InkWell(
            onTap: onSend,
            child: Icon(
              Icons.send,
              size: 36.0,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          const SizedBox(width: 10.0),
        ],
      ),
    );
  }
}
