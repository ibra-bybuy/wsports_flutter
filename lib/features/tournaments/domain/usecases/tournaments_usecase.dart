import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/tournaments/domain/entities/tournament_entity.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../repositories/tournaments_repository.dart';

@LazySingleton()
class TournamentsUsecase implements TournamentsRepository {
  final TournamentsRepository repository;
  const TournamentsUsecase(this.repository);

  @override
  Future<Either<Failure, TournamentEntities>> call() {
    return repository.call();
  }
}
