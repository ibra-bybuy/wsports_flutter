import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/tournament_details/domain/entities/tournament_details_response_entities.dart';
import 'package:watch_sports/core/errors/failures.dart';
import '../../domain/repositories/tournament_details_repository.dart';
import '../sources/tournament_details_source.dart';

@LazySingleton(as: TournamentDetailsRepository)
class TournamentDetailsRepositoryImpl implements TournamentDetailsRepository {
  final TournamentDetailsSource source;
  const TournamentDetailsRepositoryImpl(this.source);

  @override
  Future<Either<Failure, TournamentDetailsResponseEntities>> call(
      String name) async {
    try {
      final res = await source.call(name);

      return Right(TournamentDetailsResponseEntities(items: res.data.items));
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
