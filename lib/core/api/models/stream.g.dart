// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StreamApi _$StreamApiFromJson(Map<String, dynamic> json) => StreamApi(
      link: json['link'] as String? ?? '',
      langApi: json['langApi'] == null
          ? const LangApi()
          : LangApi.fromJson(json['langApi'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StreamApiToJson(StreamApi instance) => <String, dynamic>{
      'link': instance.link,
      'langApi': instance.langApi,
    };
