import 'package:watch_sports/features/home/data/models/events_response.dart';

abstract class EventsSource {
  Future<EventsResponse> getEventsBySport(
    int limit,
    int page,
    String sport,
  );
}
