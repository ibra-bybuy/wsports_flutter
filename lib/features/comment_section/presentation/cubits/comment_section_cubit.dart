import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/custom/comments_cubit/comments_cubit.dart';
import 'package:watch_sports/features/comment_section/domain/usecases/comment_section_usecase.dart';
import 'package:watch_sports/providers/jwt/comments_token.dart';
import 'package:watch_sports/providers/jwt/token_provider.dart';
import 'comment_section_state.dart';

@LazySingleton()
class CommentSectionCubit extends Cubit<CommentSectionState> {
  final CommentSectionUsecase usecase;
  final TokenProvider tokenProvider;
  CommentSectionCubit(
    this.usecase,
    @Named(commentsTokenImpl) this.tokenProvider,
  ) : super(CommentSectionInitial());

  void init(String eventId) {
    final commentSectionCubit = getCommentsCubit(eventId);
    usecase.init();
    usecase.onNewToken((token) {
      tokenProvider.saveToken(token);
    });

    usecase.onNewComment(eventId, (comment) {
      commentSectionCubit.setCommentRead(comment.id);
    });
  }

  void dispose() {
    usecase.dispose();
  }

  final Map<String, CommentsCubit> _commentCubits = {};

  CommentsCubit getCommentsCubit(String eventId) {
    if (!_commentCubits.containsKey(eventId)) {
      _commentCubits[eventId] = CommentsCubit();
    }

    return _commentCubits[eventId]!;
  }
}
