import '../models/event_details_response.dart';

abstract class EventDetailsSource {
  Future<EventDetailsResponse> getDetails(String eventId);
}
