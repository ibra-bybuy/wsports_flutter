import 'package:dartz/dartz.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../entities/tournament_details_response_entities.dart';

abstract class TournamentDetailsRepository {
  Future<Either<Failure, TournamentDetailsResponseEntities>> call(String name);
}
