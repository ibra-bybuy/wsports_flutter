import 'package:watch_sports/core/models/event.dart';

import '../../features/event_details/data/models/event_score_dto.dart';
import '../../features/event_details/data/models/event_score_team_dto.dart';
import '../../features/event_details/data/models/score_response_dto.dart';

extension ScoreResponseExt on ScoreResponseDto {
  List<ScoreResponseDtoStagesEvents> get getEvents {
    return stages.map((e) => e.events).expand((element) => element).toList();
  }

  List<EventScoreDto> get toEventScoreDto {
    final scores = getEvents.map((e) => e.toEventScoreDto).toList();
    return scores;
  }
}

extension ScoreResponseDtoStagesEventsExt on ScoreResponseDtoStagesEvents {
  EventScoreDto get toEventScoreDto {
    return EventScoreDto(
      time: eps,
      round: epr,
      id: eid,
      type: EventType.football.str,
      teams: [
        EventScoreTeamDto(name: t1.isNotEmpty ? t1.first.nm : "", score: tr1),
        EventScoreTeamDto(name: t2.isNotEmpty ? t2.first.nm : "", score: tr2)
      ],
    );
  }
}
