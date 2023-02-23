import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/event_score.dart';

part 'event_score_team_dto.g.dart';

@JsonSerializable()
class EventScoreTeamDto extends EventScoreTeam {
  const EventScoreTeamDto({
    String name = "",
    String score = "",
  }) : super(name: name, score: score);

  factory EventScoreTeamDto.fromJson(Map<String, dynamic> json) =>
      _$EventScoreTeamDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EventScoreTeamDtoToJson(this);
}
