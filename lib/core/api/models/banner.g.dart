// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerApi _$BannerApiFromJson(Map<String, dynamic> json) => BannerApi(
      code: json['code'] as String? ?? "",
      name: json['name'] as String? ?? "",
      avatarUrl: json['avatarUrl'] as String? ?? "",
    );

Map<String, dynamic> _$BannerApiToJson(BannerApi instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };
