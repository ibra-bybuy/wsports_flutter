import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/functions/date_functions.dart';
import 'package:watch_sports/core/functions/size_config.dart';
import 'package:watch_sports/core/models/comment.dart';

import '../../../../core/components/image/cached_avatar/avatar_bytes.dart';
import 'comment_body.dart';

class CommentCard extends StatefulWidget {
  final Comment comment;
  final bool showDivider;
  const CommentCard({
    super.key,
    required this.comment,
    this.showDivider = true,
  });

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig(context, 40.0)(),
          width: SizeConfig(context, 40.0)(),
          child: AvatarBytes(
            bytes: widget.comment.avatarBytes,
            text: widget.comment.name,
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GoogleText(
                    widget.comment.name,
                    maxLines: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig(context, 13)(),
                  ),
                  const SizedBox(width: 5.0),
                  Expanded(
                    child: GoogleText(
                      widget.comment.device,
                      maxLines: 1,
                      color: Theme.of(context).textTheme.bodySmall?.color,
                      fontSize: SizeConfig(context, 09)(),
                    ),
                  ),
                  if (widget.comment.createdAtDateTime != null) ...[
                    GoogleText(
                      DateFunctions(
                              passedDate: widget.comment.createdAtDateTime!)
                          .hourMinute(),
                      fontSize: SizeConfig(context, 10)(),
                    )
                  ]
                ],
              ),
              const SizedBox(height: 5.0),
              CommentBody(comment: widget.comment),
              if (widget.showDivider) ...[
                const Divider(),
              ] else ...[
                const SizedBox(height: 10.0),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
