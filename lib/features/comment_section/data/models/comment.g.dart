// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentApi _$CommentApiFromJson(Map<String, dynamic> json) => CommentApi(
      name: json['name'] as String? ?? '',
      body: json['body'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$CommentApiToJson(CommentApi instance) =>
    <String, dynamic>{
      'name': instance.name,
      'body': instance.body,
      'createdAt': instance.createdAt,
    };
