import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/models/fight.dart';
import 'package:watch_sports/core/models/fighter.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../../domain/repositories/fighter_repository.dart';
import '../sources/fighter_source.dart';

@LazySingleton(as: FighterRepository)
class FighterRepositoryImpl implements FighterRepository {
  final FighterSource source;
  const FighterRepositoryImpl(this.source);

  @override
  Future<Either<Failure, Fighter>> searchFighterByOpponentName(
      String query, String opponentName) async {
    try {
      final response =
          await source.searchFighterByOpponentName(query, opponentName);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, List<Fight>>> getFights(String query, int page) async {
    try {
      final response = await source.getFights(query, page);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Fighter>> searchByAvatar(
      String query, String avatar) async {
    try {
      final response = await source.searchByAvatar(query, avatar);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
