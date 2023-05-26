import '../../../home/data/models/events_response.dart';

abstract class TournamentDetailsSource {
  Future<EventsResponse> call(String name);
}
