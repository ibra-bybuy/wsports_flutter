import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/models/comment.dart';

import '../../domain/repositories/comment_section_repository.dart';
import '../sources/comment_section_source.dart';

@LazySingleton(as: CommentSectionRepository)
class CommentSectionRepositoryImpl implements CommentSectionRepository {
  final CommentSectionSource source;
  const CommentSectionRepositoryImpl(this.source);

  @override
  Future<void> sendComment(String event, List<Comment> comments) async {}
}
