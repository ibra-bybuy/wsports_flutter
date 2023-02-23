import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/models/event_score.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/event_score_repository.dart';

@LazySingleton()
class EventScoreUsecase implements EventScoreRepository {
  final EventScoreRepository repository;
  const EventScoreUsecase(this.repository);

  @override
  Future<void> getScore(
    String uniqueId,
    void Function(List<EventScore>) callback,
  ) {
    return repository.getScore(uniqueId, callback);
  }

  @override
  Future<Either<Failure, bool>> dispose() {
    return repository.dispose();
  }

  @override
  Future<Either<Failure, bool>> init() {
    return repository.init();
  }
}
