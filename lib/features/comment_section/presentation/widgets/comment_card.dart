import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/date_functions.dart';
import 'package:watch_sports/core/functions/size_config.dart';
import 'package:watch_sports/core/models/comment.dart';

import 'comment_body.dart';

class CommentCard extends StatelessWidget {
  final Comment comment;
  final bool showDivider;
  const CommentCard({
    super.key,
    required this.comment,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GoogleText(
              comment.name,
              maxLines: 1,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig(context, 13)(),
            ),
            const SizedBox(width: 5.0),
            Expanded(
              child: GoogleText(
                comment.device,
                maxLines: 1,
                color: Colors.grey,
                fontSize: SizeConfig(context, 09)(),
              ),
            ),
            if (comment.createdAtDateTime != null) ...[
              GoogleText(
                DateFunctions(passedDate: comment.createdAtDateTime!)
                    .hourMinute(),
                fontSize: SizeConfig(context, 10)(),
              )
            ]
          ],
        ),
        const SizedBox(height: 5.0),
        CommentBody(comment: comment),
        if (showDivider) ...[
          const Divider(),
        ] else ...[
          const SizedBox(height: 10.0),
        ],
      ],
    );
  }
}
