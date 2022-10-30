// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WsCommentRequest _$WsCommentRequestFromJson(Map<String, dynamic> json) =>
    WsCommentRequest(
      event: json['event'] as String? ?? '',
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$WsCommentRequestToJson(WsCommentRequest instance) =>
    <String, dynamic>{
      'event': instance.event,
      'comments': instance.comments,
    };
