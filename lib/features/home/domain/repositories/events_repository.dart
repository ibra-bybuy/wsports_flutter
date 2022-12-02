import 'package:dartz/dartz.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/home/domain/entities/events_response_entities.dart';

import '../entities/events_request_entities.dart';

abstract class EventsRepository {
  Future<Either<Failure, EventsResponseEntities>> call(
    EventsRequestEntities request,
  );
}
