import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/tournament_details/data/models/events_details_response.dart';
import '../../../../core/api/main_api.dart';
import '../../../../core/errors/failures.dart';
import 'tournament_details_source.dart';

@LazySingleton(as: TournamentDetailsSource)
class TournamentDetailsNetworkSource implements TournamentDetailsSource {
  final MainApi api;
  const TournamentDetailsNetworkSource(this.api);

  @override
  Future<EventsDetailsResponse> call(String name, String startTime) async {
    try {
      final response = await api.client().getTournamentEvents(name, startTime);
      return response;
    } catch (e) {
      if (e is DioError) {
        throw ServerFailure("", e.response?.statusCode ?? 0);
      }

      throw const UnknownFailure();
    }
  }
}
