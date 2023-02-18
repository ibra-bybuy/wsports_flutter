import 'package:watch_sports/features/fighter/data/models/fighter_dto.dart';

abstract class FighterSource {
  Future<FighterDto> searchFighter(String query, String opponentName);
}
