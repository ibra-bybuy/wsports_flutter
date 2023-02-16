import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/fight.dart';
import '../../../../core/models/fighter.dart';

part 'fighter_dto.g.dart';

@JsonSerializable()
class FighterDto extends Fighter {
  const FighterDto({
    super.fullname = "",
    super.picture = const [],
    super.wins = 0,
    super.losses = 0,
    super.draws = 0,
    super.allStrikes = 0,
    super.landedStrikes = 0,
    super.allTakeDowns = 0,
    super.landedTakeDowns = 0,
    super.fightHistory = const [],
  });

  factory FighterDto.fromJson(Map<String, dynamic> json) =>
      _$FighterDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FighterDtoToJson(this);
}

@JsonSerializable()
class FighterDtoFightHistory extends Fight {
  const FighterDtoFightHistory({
    super.date = "",
    super.lastRound = 0,
    super.time = "",
    super.byMethod = "",
    super.fighters = const [],
  });

  factory FighterDtoFightHistory.fromJson(Map<String, dynamic> json) =>
      _$FighterDtoFightHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$FighterDtoFightHistoryToJson(this);
}

@JsonSerializable()
class FighterDtoFightHistoryFighters extends FightHistoryItem {
  const FighterDtoFightHistoryFighters({
    super.name = "",
    super.picture = "",
    super.won = false,
  });

  factory FighterDtoFightHistoryFighters.fromJson(Map<String, dynamic> json) =>
      _$FighterDtoFightHistoryFightersFromJson(json);

  Map<String, dynamic> toJson() => _$FighterDtoFightHistoryFightersToJson(this);
}
