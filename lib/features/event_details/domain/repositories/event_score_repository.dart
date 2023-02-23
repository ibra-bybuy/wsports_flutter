import 'package:dartz/dartz.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../../../../core/models/event_score.dart';

abstract class EventScoreRepository {
  Future<void> getScore(
      String uniqueId, void Function(List<EventScore>) callback);

  Future<Either<Failure, bool>> init();
  Future<Either<Failure, bool>> dispose();
}
