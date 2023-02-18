// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'fight.dart';

enum Gender {
  male("male"),
  female("female");

  final String str;
  const Gender(this.str);
}

class Fighter extends Equatable {
  final String firstName;
  final String lastName;
  final String birthDate;
  final List<String> pictures;
  final int wins;
  final int losses;
  final int draws;
  final int noContests;
  final int allStrikes;
  final int landedStrikes;
  final int allTakeDowns;
  final int landedTakeDowns;
  final List<Fight> fightHistory;
  final String country;
  final num heightInches;
  final String nickname;
  final num weightPounds;
  final String gender;
  final num reach;
  const Fighter({
    this.firstName = '',
    this.lastName = '',
    this.birthDate = '',
    this.pictures = const [],
    this.wins = 0,
    this.losses = 0,
    this.draws = 0,
    this.noContests = 0,
    this.allStrikes = 0,
    this.landedStrikes = 0,
    this.allTakeDowns = 0,
    this.landedTakeDowns = 0,
    this.fightHistory = const [],
    this.country = "",
    this.heightInches = 0,
    this.nickname = '',
    this.weightPounds = 0,
    this.gender = '',
    this.reach = 0,
  });

  Fighter copyWith({
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
  }) {
    return Fighter(
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
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      firstName,
      lastName,
      birthDate,
      pictures,
      wins,
      losses,
      draws,
      noContests,
      allStrikes,
      landedStrikes,
      allTakeDowns,
      landedTakeDowns,
      fightHistory,
      country,
      heightInches,
      nickname,
      weightPounds,
      gender,
      reach,
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'birthDate': birthDate,
      'pictures': pictures,
      'wins': wins,
      'losses': losses,
      'draws': draws,
      'noContests': noContests,
      'allStrikes': allStrikes,
      'landedStrikes': landedStrikes,
      'allTakeDowns': allTakeDowns,
      'landedTakeDowns': landedTakeDowns,
      'fightHistory': fightHistory.map((x) {
        return x.toMap();
      }).toList(growable: false),
      'country': country,
      'heightInches': heightInches,
      'nickname': nickname,
      'weightPounds': weightPounds,
      'gender': gender,
      'reach': reach,
    };
  }

  factory Fighter.fromMap(Map<String, dynamic> map) {
    return Fighter(
      firstName: (map["firstName"] ?? '') as String,
      lastName: (map["lastName"] ?? '') as String,
      birthDate: (map["birthDate"] ?? '') as String,
      pictures: List<String>.from(
        ((map['pictures'] ?? const <String>[]) as List<String>),
      ),
      wins: (map["wins"] ?? 0) as int,
      losses: (map["losses"] ?? 0) as int,
      draws: (map["draws"] ?? 0) as int,
      noContests: (map["noContests"] ?? 0) as int,
      allStrikes: (map["allStrikes"] ?? 0) as int,
      landedStrikes: (map["landedStrikes"] ?? 0) as int,
      allTakeDowns: (map["allTakeDowns"] ?? 0) as int,
      landedTakeDowns: (map["landedTakeDowns"] ?? 0) as int,
      fightHistory: List<Fight>.from(
        ((map['fightHistory'] ?? const <Fight>[]) as List).map<Fight>((x) {
          return Fight.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
      country: (map["country"] ?? '') as String,
      heightInches: (map["heightInches"] ?? 0) as num,
      nickname: (map["nickname"] ?? '') as String,
      weightPounds: (map["weightPounds"] ?? 0) as num,
      gender: (map["gender"] ?? '') as String,
      reach: (map["reach"] ?? 0) as num,
    );
  }

  String get previewImage {
    if (pictures.isNotEmpty) {
      return pictures.first;
    }

    return "";
  }

  String get fullName {
    return "$firstName $lastName".trim();
  }

  String get nameWithNickname {
    List<String> names = [];
    names.add(firstName);
    if (nickname.isNotEmpty) {
      names.add("\"$nickname\"");
    }
    names.add(lastName);

    return names.join(" ").trim();
  }

  String get formattedRecord {
    return "$wins-$losses-$draws".trim();
  }
}
