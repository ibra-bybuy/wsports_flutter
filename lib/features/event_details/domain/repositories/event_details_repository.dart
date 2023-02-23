import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/event_details_response_entities.dart';

abstract class EventDetailsRepository {
  Future<Either<Failure, EventDetailsResponseEntities>> getDetails(
      String eventId);
}
