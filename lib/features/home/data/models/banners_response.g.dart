// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannersResponse _$BannersResponseFromJson(Map<String, dynamic> json) =>
    BannersResponse(
      success: json['success'] as bool? ?? false,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BannerApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BannersResponseToJson(BannersResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
