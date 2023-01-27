import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/tournament_details/domain/entities/tournament_details_response_entities.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../repositories/tournament_details_repository.dart';

@LazySingleton()
class TournamentDetailsUsecase implements TournamentDetailsRepository {
  final TournamentDetailsRepository repository;
  const TournamentDetailsUsecase(this.repository);

  @override
  Future<Either<Failure, TournamentDetailsResponseEntities>> call(
      String name, String startTime) async {
    return await repository.call(name, startTime);
  }
}
