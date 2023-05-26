import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/features/home/data/models/events_response.dart';
import 'package:watch_sports/features/home/data/sources/events_source.dart';

import '../../../../core/errors/handle_dio_error.dart';

@LazySingleton(as: EventsSource)
class EventsNetwork implements EventsSource {
  final MainApi api;
  const EventsNetwork(this.api);

  @override
  Future<EventsResponse> getEventsBySport(
    int limit,
    int page,
    String sport,
  ) async {
    try {
      final response = await api.client().getEventsBySport(
            limit,
            page,
            sport,
          );
      return response;
    } catch (e) {
      return HandleDioError<EventsResponse>(e)();
    }
  }
}
