import 'package:watch_sports/features/fighter/data/models/fighter_dto.dart';

abstract class FighterSource {
  Future<FighterDto> searchFighterByOpponentName(
      String query, String opponentName);
  Future<List<FighterDtoFightHistory>> getFights(String query, int page);

  Future<FighterDto> searchByAvatar(String query, String avatar);
}
