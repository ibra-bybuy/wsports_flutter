import 'package:watch_sports/generated/proto/comment.pbserver.dart';

import '../../generated/proto/user.pb.dart';
import '../models/comment.dart';

extension CommentExt on Comment {
  CommentProto toProto(String eventId) {
    return CommentProto(
      body: body,
      user: UserProto(
        name: name,
      ),
      dateTime: createdAt,
      eventId: eventId,
      device: device,
    );
  }
}
