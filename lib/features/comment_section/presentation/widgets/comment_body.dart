import 'package:flutter/material.dart';
import 'package:watch_sports/core/models/comment.dart';

import '../../../../core/components/text/google_text.dart';
import '../../../../core/functions/size_config.dart';

class CommentBody extends StatelessWidget {
  final Comment comment;
  const CommentBody({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    Color? color;

    if (comment.isSending) {
      color = Colors.grey;
    } else if (comment.isError) {
      color = Colors.red;
    }

    return GoogleText(
      comment.body,
      fontSize: SizeConfig(context, 13)(),
      color: color,
    );
  }
}
