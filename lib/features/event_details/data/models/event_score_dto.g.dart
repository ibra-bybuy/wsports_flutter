// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_score_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventScoreDto _$EventScoreDtoFromJson(Map<String, dynamic> json) =>
    EventScoreDto(
      id: json['id'] as String? ?? "",
      time: json['time'] as String? ?? "",
      round: json['round'] as int? ?? 0,
      teams: (json['teams'] as List<dynamic>?)
              ?.map(
                  (e) => EventScoreTeamDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      type: json['type'] as String? ?? "",
    );

Map<String, dynamic> _$EventScoreDtoToJson(EventScoreDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'round': instance.round,
      'teams': instance.teams,
      'type': instance.type,
    };
