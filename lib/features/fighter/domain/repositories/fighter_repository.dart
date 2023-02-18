import 'package:dartz/dartz.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/core/models/fighter.dart';

abstract class FighterRepository {
  Future<Either<Failure, Fighter>> searchFighter(
      String query, String opponentName);
}
