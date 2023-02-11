import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/features/tournaments/data/models/tournaments_response_dto.dart';
import 'package:watch_sports/features/tournaments/data/models/tournaments_request_dto.dart';
import '../../../../core/errors/handle_dio_error.dart';
import 'tournaments_source.dart';

@LazySingleton(as: TournamentsSource)
class TournamentsNetworkSource implements TournamentsSource {
  final MainApi api;
  const TournamentsNetworkSource(this.api);

  @override
  Future<TournamentsResponseDto> getTournaments(
      TournamentsRequestDto request) async {
    try {
      final response = await api.client().getTournaments(
            request.date,
            request.type.isEmpty ? null : request.type,
            request.page,
            request.limit,
          );

      return response;
    } catch (e) {
      return HandleDioError<TournamentsResponseDto>(e)();
    }
  }
}
