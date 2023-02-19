// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    super.winsByKo,
    super.winsByDec,
    super.winsBySub,
  });

  factory FighterDto.fromJson(Map<String, dynamic> json) =>
      _$FighterDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FighterDtoToJson(this);

  @override
  FighterDto copyWith({
    String? firstName,
    String? lastName,
    String? birthDate,
    List<String>? pictures,
    int? wins,
    int? losses,
    int? draws,
    int? noContests,
    int? allStrikes,
    int? landedStrikes,
    int? allTakeDowns,
    int? landedTakeDowns,
    List<Fight>? fightHistory,
    String? country,
    num? heightInches,
    String? nickname,
    num? weightPounds,
    String? gender,
    num? reach,
    int? winsByKo,
    int? winsByDec,
    int? winsBySub,
  }) {
    return FighterDto(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      birthDate: birthDate ?? this.birthDate,
      pictures: pictures ?? this.pictures,
      wins: wins ?? this.wins,
      losses: losses ?? this.losses,
      draws: draws ?? this.draws,
      noContests: noContests ?? this.noContests,
      allStrikes: allStrikes ?? this.allStrikes,
      landedStrikes: landedStrikes ?? this.landedStrikes,
      allTakeDowns: allTakeDowns ?? this.allTakeDowns,
      landedTakeDowns: landedTakeDowns ?? this.landedTakeDowns,
      fightHistory: fightHistory ?? this.fightHistory,
      country: country ?? this.country,
      heightInches: heightInches ?? this.heightInches,
      nickname: nickname ?? this.nickname,
      weightPounds: weightPounds ?? this.weightPounds,
      gender: gender ?? this.gender,
      reach: reach ?? this.reach,
      winsByKo: winsByKo ?? this.winsByKo,
      winsByDec: winsByDec ?? this.winsByDec,
      winsBySub: winsBySub ?? this.winsBySub,
    );
  }
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
