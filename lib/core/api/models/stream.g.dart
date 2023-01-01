// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StreamApi _$StreamApiFromJson(Map<String, dynamic> json) => StreamApi(
      link: json['link'] as String? ?? '',
      lang: json['lang'] as String? ?? "",
    );

Map<String, dynamic> _$StreamApiToJson(StreamApi instance) => <String, dynamic>{
      'lang': instance.lang,
      'link': instance.link,
    };
