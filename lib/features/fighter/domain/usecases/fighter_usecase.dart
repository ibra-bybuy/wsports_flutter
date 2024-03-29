import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/models/fight.dart';
import 'package:watch_sports/core/models/fighter.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../repositories/fighter_repository.dart';

@LazySingleton()
class FighterUsecase implements FighterRepository {
  final FighterRepository repository;
  const FighterUsecase(this.repository);

  @override
  Future<Either<Failure, Fighter>> searchFighterByOpponentName(
      String query, String opponentName) {
    return repository.searchFighterByOpponentName(query, opponentName);
  }

  @override
  Future<Either<Failure, List<Fight>>> getFights(String query, int page) {
    return repository.getFights(query, page);
  }

  @override
  Future<Either<Failure, Fighter>> searchByAvatar(String query, String avatar) {
    return repository.searchByAvatar(query, avatar);
  }
}
