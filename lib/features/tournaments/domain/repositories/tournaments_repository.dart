import 'package:dartz/dartz.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/tournaments/domain/entities/tournament_entity.dart';

abstract class TournamentsRepository {
  Future<Either<Failure, TournamentEntities>> call();
}
