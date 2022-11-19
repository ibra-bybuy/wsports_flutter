import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/models/comment.dart';

class CommentsCubit extends Cubit<List<Comment>> {
  CommentsCubit() : super([]);

  void add(List<Comment> newComments) {
    final comments = List<Comment>.from(state)..addAll(newComments);
    emit(comments);
  }

  void setCommentRead(String id) {
    _updateComment(id, replace: (comment) {
      return comment.copyWith(status: CommentStatus.sent);
    });
  }

  void _updateComment(String id, {required Comment Function(Comment) replace}) {
    final comments = List<Comment>.from(state);
    final commentIndex = comments.indexWhere((element) => element.id == id);
    if (commentIndex > -1) {
      comments[commentIndex] = replace.call(comments[commentIndex]);

      emit(comments);
    }
  }
}
