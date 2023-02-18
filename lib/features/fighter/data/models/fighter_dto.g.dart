// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fighter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FighterDto _$FighterDtoFromJson(Map<String, dynamic> json) => FighterDto(
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      birthDate: json['birthDate'] as String? ?? '',
      pictures: (json['pictures'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      wins: json['wins'] as int? ?? 0,
      losses: json['losses'] as int? ?? 0,
      draws: json['draws'] as int? ?? 0,
      noContests: json['noContests'] as int? ?? 0,
      allStrikes: json['allStrikes'] as int? ?? 0,
      landedStrikes: json['landedStrikes'] as int? ?? 0,
      allTakeDowns: json['allTakeDowns'] as int? ?? 0,
      landedTakeDowns: json['landedTakeDowns'] as int? ?? 0,
      fightHistory: (json['fightHistory'] as List<dynamic>?)
              ?.map((e) => Fight.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      country: json['country'] as String? ?? "",
      heightInches: json['heightInches'] as num? ?? 0,
      nickname: json['nickname'] as String? ?? '',
      weightPounds: json['weightPounds'] as num? ?? 0,
      gender: json['gender'] as String? ?? '',
      reach: json['reach'] as num? ?? 0,
    );

Map<String, dynamic> _$FighterDtoToJson(FighterDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthDate': instance.birthDate,
      'pictures': instance.pictures,
      'wins': instance.wins,
      'losses': instance.losses,
      'draws': instance.draws,
      'noContests': instance.noContests,
      'allStrikes': instance.allStrikes,
      'landedStrikes': instance.landedStrikes,
      'allTakeDowns': instance.allTakeDowns,
      'landedTakeDowns': instance.landedTakeDowns,
      'fightHistory': instance.fightHistory,
      'country': instance.country,
      'heightInches': instance.heightInches,
      'nickname': instance.nickname,
      'weightPounds': instance.weightPounds,
      'gender': instance.gender,
      'reach': instance.reach,
    };

FighterDtoFightHistory _$FighterDtoFightHistoryFromJson(
        Map<String, dynamic> json) =>
    FighterDtoFightHistory(
      date: json['date'] as String? ?? "",
      lastRound: json['lastRound'] as int? ?? 0,
      time: json['time'] as String? ?? "",
      byMethod: json['byMethod'] as String? ?? "",
      fighters: (json['fighters'] as List<dynamic>?)
              ?.map((e) => FightHistoryItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FighterDtoFightHistoryToJson(
        FighterDtoFightHistory instance) =>
    <String, dynamic>{
      'date': instance.date,
      'lastRound': instance.lastRound,
      'time': instance.time,
      'byMethod': instance.byMethod,
      'fighters': instance.fighters,
    };

FighterDtoFightHistoryFighters _$FighterDtoFightHistoryFightersFromJson(
        Map<String, dynamic> json) =>
    FighterDtoFightHistoryFighters(
      name: json['name'] as String? ?? "",
      picture: json['picture'] as String? ?? "",
      won: json['won'] as bool? ?? false,
    );

Map<String, dynamic> _$FighterDtoFightHistoryFightersToJson(
        FighterDtoFightHistoryFighters instance) =>
    <String, dynamic>{
      'name': instance.name,
      'picture': instance.picture,
      'won': instance.won,
    };
