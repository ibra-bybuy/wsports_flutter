// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventApi _$EventApiFromJson(Map<String, dynamic> json) => EventApi(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      startTime: json['startTime'] as String? ?? '',
      endTime: json['endTime'] as String? ?? '',
      teams: (json['teams'] as List<dynamic>?)
              ?.map((e) => TeamApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      type: json['type'] as String? ?? '',
      streams: (json['streams'] as List<dynamic>?)
              ?.map((e) => StreamApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EventApiToJson(EventApi instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'teams': instance.teams,
      'type': instance.type,
      'streams': instance.streams,
    };