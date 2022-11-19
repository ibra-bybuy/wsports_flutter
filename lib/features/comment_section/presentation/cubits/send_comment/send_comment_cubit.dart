import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_cubit.dart';
import 'package:watch_sports/features/comment_section/domain/usecases/comment_section_usecase.dart';

import '../../../../../core/models/comment.dart';
import '../../../../../providers/device_info/device_info_provider.dart';
import '../../../../../providers/jwt/comments_token.dart';
import '../../../../../providers/jwt/token_provider.dart';
import 'send_comment_state.dart';

@LazySingleton()
class SendCommentCubit extends Cubit<SendCommentState> {
  final TokenProvider tokenProvider;
  final UserCubit userCubit;
  final CommentSectionUsecase usecase;
  final DeviceInfoProvider deviceInfoProvider;
  SendCommentCubit(
    @Named(commentsTokenImpl) this.tokenProvider,
    this.userCubit,
    this.usecase,
    this.deviceInfoProvider,
  ) : super(SendCommentInitial());

  Future<void> send(String eventId, String message) async {
    usecase.sendComment(
      eventId,
      await _makeComment(message),
    );
  }

  Future<Comment> _makeComment(String text) async {
    return Comment(
      name: userCubit.name,
      body: text,
      createdAt: DateTime.now().toString(),
      device: await deviceInfoProvider.deviceName(),
    );
  }
}
