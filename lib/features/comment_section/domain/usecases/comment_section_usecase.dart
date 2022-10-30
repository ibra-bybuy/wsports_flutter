import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/models/comment.dart';

import '../repositories/comment_section_repository.dart';

@LazySingleton()
class CommentSectionUsecase implements CommentSectionRepository {
  final CommentSectionRepository repository;
  const CommentSectionUsecase(this.repository);

  @override
  Future<void> sendComment(String event, List<Comment> comments) {
    return repository.sendComment(event, comments);
  }
}
