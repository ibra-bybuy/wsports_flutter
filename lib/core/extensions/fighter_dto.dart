import 'package:watch_sports/features/fighter/data/models/fighter_dto.dart';

extension FighterDtoExt on FighterDto {
  FighterDto joinBy(FighterDto? fighter) {
    return copyWith(
      firstName:
          fighter?.firstName.isNotEmpty == true ? fighter?.firstName : null,
      lastName: fighter?.lastName.isNotEmpty == true ? fighter?.lastName : null,
      nickname: fighter?.nickname.isNotEmpty == true ? fighter?.nickname : null,
      winsByKo: fighter?.winsByKo,
      winsByDec: fighter?.winsByDec,
      winsBySub: fighter?.winsBySub,
      allStrikes: fighter?.allStrikes,
      landedStrikes: fighter?.landedStrikes,
      allTakeDowns: fighter?.allTakeDowns,
      landedTakeDowns: fighter?.landedTakeDowns,
      fightHistory: fighter?.fightHistory,
    );
  }
}
