import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/home/domain/entities/events_response_entities.dart';
import '../repositories/events_repository.dart';

@LazySingleton()
class EventsUseCase implements EventsRepository {
  final EventsRepository repository;
  const EventsUseCase(this.repository);

  @override
  Future<Either<Failure, EventsResponseEntities>> call(String category) {
    return repository.call(category);
  }
}
