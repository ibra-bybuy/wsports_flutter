import 'package:watch_sports/features/event_details/data/models/event_score_dto.dart';

abstract class EventScoreSource {
  Future<bool> init();

  Future<void> listenToScores(
    String uniqueId,
    void Function(List<EventScoreDto> scores) listener,
  );

  Future<bool> dispose();
}
