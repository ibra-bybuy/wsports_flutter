import 'package:watch_sports/features/home/data/models/events_response.dart';

abstract class EventsSource {
  Future<EventsResponse> getEventsByDate(
    String date,
    int limit,
    int page,
    String? type,
  );
}
