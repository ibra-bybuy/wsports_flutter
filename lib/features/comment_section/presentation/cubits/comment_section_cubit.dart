import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_cubit.dart';
import 'package:watch_sports/core/cubits/custom/comments_cubit/comments_cubit.dart';
import 'package:watch_sports/core/models/comment.dart';
import 'comment_section_state.dart';

@LazySingleton()
class CommentSectionCubit extends Cubit<CommentSectionState> {
  final UserCubit userCubit;
  CommentSectionCubit(this.userCubit) : super(CommentSectionInitial());
  final Map<String, CommentsCubit> _commentCubits = {};

  void send(String text, String eventName) {
    final commentsCubit = getCommentsCubit(eventName);
    final comment = Comment(
      name: userCubit.name,
      body: text,
      createdAt: DateTime.now().toString(),
    );
    commentsCubit.add([comment]);
  }

  CommentsCubit getCommentsCubit(String eventName) {
    if (!_commentCubits.containsKey(eventName)) {
      _commentCubits[eventName] = CommentsCubit();
    }

    return _commentCubits[eventName]!;
  }
}
