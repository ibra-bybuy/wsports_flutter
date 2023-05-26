// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventApi _$EventApiFromJson(Map<String, dynamic> json) => EventApi(
      uuid: json['uuid'] as String? ?? "",
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? '',
      teams: (json['teams'] as List<dynamic>?)
              ?.map((e) => TeamApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      startAt: json['startAt'] as String? ?? '',
      endAt: json['endAt'] as String? ?? '',
      avatarUrl: json['avatarUrl'] as String? ?? "",
      address: json['address'] as String? ?? "",
      lang: json['lang'] == null
          ? const LangApi()
          : LangApi.fromJson(json['lang'] as Map<String, dynamic>),
      hideElements: json['hideElements'] as String? ?? "",
      sport: json['sport'] as String? ?? '',
      streams: (json['streams'] as List<dynamic>?)
              ?.map((e) => StreamApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EventApiToJson(EventApi instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'teams': instance.teams,
      'streams': instance.streams,
      'hideElements': instance.hideElements,
      'uuid': instance.uuid,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'avatarUrl': instance.avatarUrl,
      'address': instance.address,
      'lang': instance.lang,
      'sport': instance.sport,
    };
