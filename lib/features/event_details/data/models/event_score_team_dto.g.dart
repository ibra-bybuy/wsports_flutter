// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_score_team_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventScoreTeamDto _$EventScoreTeamDtoFromJson(Map<String, dynamic> json) =>
    EventScoreTeamDto(
      name: json['name'] as String? ?? "",
      score: json['score'] as String? ?? "",
    );

Map<String, dynamic> _$EventScoreTeamDtoToJson(EventScoreTeamDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'score': instance.score,
    };
