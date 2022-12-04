// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerApi _$BannerApiFromJson(Map<String, dynamic> json) => BannerApi(
      name: json['name'] as String? ?? "",
      endTime: json['endTime'] as String? ?? "",
      link: json['link'] as String? ?? "",
    );

Map<String, dynamic> _$BannerApiToJson(BannerApi instance) => <String, dynamic>{
      'name': instance.name,
      'endTime': instance.endTime,
      'link': instance.link,
    };
