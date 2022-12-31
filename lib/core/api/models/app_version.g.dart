// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppVersionApi _$AppVersionApiFromJson(Map<String, dynamic> json) =>
    AppVersionApi(
      id: json['id'] as int? ?? 0,
      applicationLabel: json['applicationLabel'] as String? ?? "",
      package: json['package'] as String? ?? "",
      versionCode: json['versionCode'] as num? ?? 0,
      versionName: json['versionName'] as String? ?? "",
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$AppVersionApiToJson(AppVersionApi instance) =>
    <String, dynamic>{
      'versionCode': instance.versionCode,
      'url': instance.url,
      'id': instance.id,
      'applicationLabel': instance.applicationLabel,
      'package': instance.package,
      'versionName': instance.versionName,
    };
