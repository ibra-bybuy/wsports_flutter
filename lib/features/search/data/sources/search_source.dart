import '../../../home/data/models/events_response.dart';

abstract class SearchSource {
  Future<EventsResponse> search(
    String query,
    int limit,
    int page,
  );
}
