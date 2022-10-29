import 'package:injectable/injectable.dart';

import '../repositories/comment_section_repository.dart';

@LazySingleton()
class CommentSectionUsecase {
  final CommentSectionRepository repository;
  const CommentSectionUsecase(this.repository);
}
