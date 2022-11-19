import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_cubit.dart';
import 'package:watch_sports/features/comment_section/domain/usecases/comment_section_usecase.dart';

import '../../../../../core/models/comment.dart';
import '../../../../../providers/device_info/device_info_provider.dart';
import '../../../../../providers/jwt/comments_token.dart';
import '../../../../../providers/jwt/token_provider.dart';
import '../comment_section_cubit.dart';
import 'send_comment_state.dart';

@LazySingleton()
class SendCommentCubit extends Cubit<SendCommentState> {
  final TokenProvider tokenProvider;
  final UserCubit userCubit;
  final CommentSectionUsecase usecase;
  final DeviceInfoProvider deviceInfoProvider;
  final CommentSectionCubit commentSectionCubit;
  SendCommentCubit(
    @Named(commentsTokenImpl) this.tokenProvider,
    this.userCubit,
    this.usecase,
    this.deviceInfoProvider,
    this.commentSectionCubit,
  ) : super(SendCommentInitial());

  final uuid = Uuid();

  Future<void> send(String eventId, String message) async {
    final section = commentSectionCubit.getCommentsCubit(eventId);
    final comment = await _makeComment(message);
    section.add([comment]);
    usecase.sendComment(
      eventId,
      await tokenProvider.getToken(),
      comment,
    );
  }

  Future<Comment> _makeComment(String text) async {
    return Comment(
      id: uuid.v4(),
      name: userCubit.name,
      body: text,
      createdAt: DateTime.now().toString(),
      device: await deviceInfoProvider.deviceName(),
    );
  }
}
