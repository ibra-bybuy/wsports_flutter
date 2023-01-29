import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/tournaments/domain/entities/tournament_entity.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../../domain/repositories/tournaments_repository.dart';
import '../sources/tournaments_source.dart';

@LazySingleton(as: TournamentsRepository)
class TournamentsRepositoryImpl implements TournamentsRepository {
  final TournamentsSource source;
  const TournamentsRepositoryImpl(this.source);

  @override
  Future<Either<Failure, TournamentEntities>> call() {
    throw UnimplementedError();
  }
}
