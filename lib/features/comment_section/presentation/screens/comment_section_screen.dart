import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/listview/listview_builder.dart';
import 'package:watch_sports/core/cubits/custom/comments_cubit/comments_cubit.dart';
import 'package:watch_sports/core/models/comment.dart';
import 'package:watch_sports/features/comment_section/presentation/cubits/send_comment/send_comment_cubit.dart';
import 'package:watch_sports/features/comment_section/presentation/widgets/comment_card.dart';

import '../../../../setup.dart';
import '../cubits/comment_section_cubit.dart';
import '../widgets/bottom_area.dart';

@RoutePage()
class CommentSectionScreen extends StatefulWidget {
  final String eventId;
  const CommentSectionScreen({Key? key, required this.eventId})
      : super(key: key);

  @override
  State<CommentSectionScreen> createState() => _CommentSectionScreenState();
}

class _CommentSectionScreenState extends State<CommentSectionScreen> {
  final commentEditingCotroller = TextEditingController();
  final commentSectionCubit = getIt<CommentSectionCubit>();
  final sendCommentCubit = getIt<SendCommentCubit>();
  late final CommentsCubit commentsCubit;

  @override
  void initState() {
    super.initState();

    commentsCubit = commentSectionCubit.getCommentsCubit(widget.eventId);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.85,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: BlocBuilder<CommentsCubit, List<Comment>>(
                bloc: commentsCubit,
                builder: (context, state) {
                  final items = state.isNotEmpty
                      ? state.reversed.toList()
                      : List<Comment>.from([]);
                  return CustomListViewBuilder<Comment>(
                    items: items,
                    reverse: true,
                    itemBuilder: (context, i, item) {
                      return CommentCard(
                        comment: item,
                        showDivider: i != 0,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          SafeArea(
            child: CommentBottomArea(
              textEditingController: commentEditingCotroller,
              onSend: () {
                sendCommentCubit.send(
                  widget.eventId,
                  commentEditingCotroller.text,
                );
                commentEditingCotroller.clear();
              },
            ),
          ),
          const SizedBox(height: 15.0)
        ],
      ),
    );
  }
}
