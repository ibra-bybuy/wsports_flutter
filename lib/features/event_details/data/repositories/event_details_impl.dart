import 'package:injectable/injectable.dart';

import '../../domain/repositories/event_details_repository.dart';
import '../sources/event_details_source.dart';

@LazySingleton(as: EventDetailsRepository)
class EventDetailsRepositoryImpl implements EventDetailsRepository {
  final EventDetailsSource source;

  const EventDetailsRepositoryImpl(this.source);
}
