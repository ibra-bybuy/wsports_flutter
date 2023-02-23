import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/features/event_details/data/models/event_details_response.dart';
import '../../../../core/errors/handle_dio_error.dart';
import 'event_details_source.dart';

@LazySingleton(as: EventDetailsSource)
class EventDetailsNetworkSource implements EventDetailsSource {
  final MainApi api;
  EventDetailsNetworkSource(this.api);

  @override
  Future<EventDetailsResponse> getDetails(String eventId) async {
    try {
      final response = await api.client().getEventById(eventId);
      return response;
    } catch (e) {
      return HandleDioError<EventDetailsResponse>(e)();
    }
  }
}
