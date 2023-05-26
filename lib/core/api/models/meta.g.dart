// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaApi _$MetaApiFromJson(Map<String, dynamic> json) => MetaApi(
      totalItems: json['totalItems'] as int? ?? 0,
      itemCount: json['itemCount'] as int? ?? 0,
      limit: json['limit'] as int? ?? 0,
      totalPages: json['totalPages'] as int? ?? 0,
      page: json['page'] as int? ?? 0,
    );

Map<String, dynamic> _$MetaApiToJson(MetaApi instance) => <String, dynamic>{
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'totalItems': instance.totalItems,
      'itemCount': instance.itemCount,
      'page': instance.page,
    };
