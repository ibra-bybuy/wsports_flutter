import 'package:injectable/injectable.dart';

import '../repositories/event_details_repository.dart';

@LazySingleton()
class EventDetailsUsecase {
  final EventDetailsRepository repository;
  const EventDetailsUsecase(this.repository);
}
