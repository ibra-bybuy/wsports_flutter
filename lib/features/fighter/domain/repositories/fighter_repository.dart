import 'package:dartz/dartz.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/core/models/fighter.dart';

import '../../../../core/models/fight.dart';

abstract class FighterRepository {
  Future<Either<Failure, Fighter>> searchFighter(
    String query,
    String opponentName,
  );

  Future<Either<Failure, List<Fight>>> getFights(
    String query,
    int page,
  );
}
