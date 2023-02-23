import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/models/event_score.dart';
import 'package:watch_sports/features/event_details/data/sources/event_score_source.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/repositories/event_score_repository.dart';

@LazySingleton(as: EventScoreRepository)
class EventScoreRepositoryImpl implements EventScoreRepository {
  final EventScoreSource source;
  const EventScoreRepositoryImpl(this.source);

  @override
  Future<void> getScore(
    String uniqueId,
    void Function(List<EventScore>) callback,
  ) async {
    final res = source.listenToScores(uniqueId, callback);

    return res;
  }

  @override
  Future<Either<Failure, bool>> dispose() async {
    try {
      final res = await source.dispose();
      return Right(res);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, bool>> init() async {
    try {
      final res = await source.init();
      return Right(res);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
