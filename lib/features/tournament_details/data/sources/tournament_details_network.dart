import 'package:injectable/injectable.dart';
import '../../../../core/api/main_api.dart';
import '../../../../core/errors/handle_dio_error.dart';
import '../../../home/data/models/events_response.dart';
import 'tournament_details_source.dart';

@LazySingleton(as: TournamentDetailsSource)
class TournamentDetailsNetworkSource implements TournamentDetailsSource {
  final MainApi api;
  const TournamentDetailsNetworkSource(this.api);

  @override
  Future<EventsResponse> call(
    String name,
  ) async {
    try {
      final response = await api.client().getTournamentEvents(name, 50, 1);
      return response;
    } catch (e) {
      return HandleDioError<EventsResponse>(e)();
    }
  }
}
