// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_versions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppVersionsResponse _$AppVersionsResponseFromJson(Map<String, dynamic> json) =>
    AppVersionsResponse(
      statusCode: json['statusCode'] as int? ?? 0,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AppVersionApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AppVersionsResponseToJson(
        AppVersionsResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
