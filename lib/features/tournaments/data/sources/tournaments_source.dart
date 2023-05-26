import 'package:watch_sports/features/tournaments/data/models/tournaments_response_dto.dart';

abstract class TournamentsSource {
  Future<TournamentsResponseDto> getTournaments();
}
