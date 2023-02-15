// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamApi _$TeamApiFromJson(Map<String, dynamic> json) => TeamApi(
      name: json['name'] as String? ?? '',
      avatarUrl: json['avatarUrl'] as String? ?? '',
      position: json['position'] as int? ?? 0,
      langApi: json['lang'] as String? ?? "",
    );

Map<String, dynamic> _$TeamApiToJson(TeamApi instance) => <String, dynamic>{
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'position': instance.position,
      'lang': instance.langApi,
    };
