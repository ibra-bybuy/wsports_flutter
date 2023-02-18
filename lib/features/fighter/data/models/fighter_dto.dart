import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/fight.dart';
import '../../../../core/models/fighter.dart';

part 'fighter_dto.g.dart';

@JsonSerializable()
class FighterDto extends Fighter {
  const FighterDto({
    super.firstName,
    super.lastName,
    super.birthDate,
    super.pictures,
    super.wins,
    super.losses,
    super.draws,
    super.noContests,
    super.allStrikes,
    super.landedStrikes,
    super.allTakeDowns,
    super.landedTakeDowns,
    super.fightHistory,
    super.country,
    super.heightInches,
    super.nickname,
    super.weightPounds,
    super.gender,
    super.reach,
  });

  factory FighterDto.fromJson(Map<String, dynamic> json) =>
      _$FighterDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FighterDtoToJson(this);
}

@JsonSerializable()
class FighterDtoFightHistory extends Fight {
  const FighterDtoFightHistory({
    super.date,
    super.lastRound,
    super.time,
    super.byMethod,
    super.fighters,
  });

  factory FighterDtoFightHistory.fromJson(Map<String, dynamic> json) =>
      _$FighterDtoFightHistoryFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FighterDtoFightHistoryToJson(this);
}

@JsonSerializable()
class FighterDtoFightHistoryFighters extends FightHistoryItem {
  const FighterDtoFightHistoryFighters({
    super.name,
    super.picture,
    super.won,
  });

  factory FighterDtoFightHistoryFighters.fromJson(Map<String, dynamic> json) =>
      _$FighterDtoFightHistoryFightersFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FighterDtoFightHistoryFightersToJson(this);
}
