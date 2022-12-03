import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../home/domain/entities/events_response_entities.dart';
import '../entities/search_entities.dart';

abstract class SearchRepository {
  Future<Either<Failure, EventsResponseEntities>> call(
    SearchEntities request,
  );
}
