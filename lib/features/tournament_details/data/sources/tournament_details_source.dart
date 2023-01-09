import '../models/events_details_response.dart';

abstract class TournamentDetailsSource {
  Future<EventsDetailsResponse> call(String name, String startTime);
}
