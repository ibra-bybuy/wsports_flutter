import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/features/home/data/models/events_response.dart';
import 'package:watch_sports/features/home/data/sources/events_source.dart';

import '../../../../core/errors/failures.dart';

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
      if (e is DioError) {
        throw ServerFailure("", e.response?.statusCode ?? 0);
      }

      throw const UnknownFailure();
    }
  }
}
