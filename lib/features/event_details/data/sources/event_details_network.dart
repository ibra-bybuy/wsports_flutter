import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/features/event_details/data/models/event_details_response.dart';
import '../../../../core/errors/failures.dart';
import 'event_details_source.dart';

@LazySingleton(as: EventDetailsSource)
class EventDetailsNetworkSource implements EventDetailsSource {
  final MainApi api;
  const EventDetailsNetworkSource(this.api);

  @override
  Future<EventDetailsResponse> call(String eventId) async {
    try {
      final response = await api.client().getEventById(eventId);
      return response;
    } catch (e) {
      if (e is DioError) {
        throw ServerFailure("", e.response?.statusCode ?? 0);
      }

      throw const UnknownFailure();
    }
  }
}
