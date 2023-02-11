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
  Future<EventsResponse> getEventsByDate(
    String date,
    int limit,
    int page,
    String? type,
  ) async {
    try {
      final response = await api.client().getEventsByDate(
            date,
            limit,
            page,
            type,
          );
      return response;
    } catch (e) {
      return HandleDioError<EventsResponse>(e)();
    }
  }
}
