import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/event.dart';
import '../../../../core/models/event_score.dart';
import 'event_score_team_dto.dart';

part 'event_score_dto.g.dart';

@JsonSerializable()
class EventScoreDto extends EventScore {
  final String type;
  EventScoreDto({
    String id = "",
    String time = "",
    int round = 0,
    List<EventScoreTeamDto> teams = const [],
    this.type = "",
  }) : super(
          id: id,
          time: time,
          round: round,
          teams: teams,
          eventType: EventType.getByCode(type),
        );

  factory EventScoreDto.fromJson(Map<String, dynamic> json) =>
      _$EventScoreDtoFromJson(json);

  Map<String, dynamic> toJson() => _$EventScoreDtoToJson(this);
}
