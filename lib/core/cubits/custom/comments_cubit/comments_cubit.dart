import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/models/comment.dart';

class CommentsCubit extends Cubit<List<Comment>> {
  CommentsCubit() : super([]);

  void add(List<Comment> newComments) {
    final comments = List<Comment>.from(state)..addAll(newComments);
    emit(comments);
  }
}
