import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/tournaments/data/models/tournaments_request_dto.dart';
import 'package:watch_sports/features/tournaments/domain/entities/tournament_entity.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../../domain/repositories/tournaments_repository.dart';
import '../sources/tournaments_source.dart';

@LazySingleton(as: TournamentsRepository)
class TournamentsRepositoryImpl implements TournamentsRepository {
  final TournamentsSource source;
  const TournamentsRepositoryImpl(this.source);

  @override
  Future<Either<Failure, TournamentEntities>> call({
    required String date,
    required String type,
    required int page,
    required int limit,
  }) async {
    try {
      final response = await source.getTournaments(
        TournamentsRequestDto(date: date, type: type, page: page, limit: limit),
      );

      return Right(TournamentEntities(items: response.data.items));
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
