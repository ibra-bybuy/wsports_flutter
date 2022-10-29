import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/listview/listview_builder.dart';
import 'package:watch_sports/core/cubits/custom/comments_cubit/comments_cubit.dart';
import 'package:watch_sports/core/models/comment.dart';
import 'package:watch_sports/features/comment_section/presentation/widgets/comment_card.dart';

import '../../../../setup.dart';
import '../cubits/comment_section_cubit.dart';
import '../widgets/bottom_area.dart';

class CommentSectionScreen extends StatefulWidget {
  final String eventName;
  const CommentSectionScreen({Key? key, required this.eventName})
      : super(key: key);

  @override
  State<CommentSectionScreen> createState() => _CommentSectionScreenState();
}

class _CommentSectionScreenState extends State<CommentSectionScreen> {
  final commentEditingCotroller = TextEditingController();
  final commentSectionCubit = getIt<CommentSectionCubit>();
  late final CommentsCubit commentsCubit;

  @override
  void initState() {
    super.initState();

    commentsCubit = commentSectionCubit.getCommentsCubit(widget.eventName);
    commentsCubit.add(items);
  }

  final items = [
    Comment(
      name: "Ibra",
      body: "Lool",
      createdAt: DateTime.now().toString(),
    ),
    Comment(
      name: "Ibra 1",
      body: "Are you dead or are you alive",
      createdAt: DateTime.now().toString(),
    ),
    Comment(
      name: "Ibra 2",
      body: "lala",
      createdAt: DateTime.now().toString(),
    ),
    Comment(
      name: "Ibra 3",
      body: "hahahahaha",
      createdAt: DateTime.now().toString(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
                commentSectionCubit.send(
                    commentEditingCotroller.text, widget.eventName);
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
