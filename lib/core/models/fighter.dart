// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'fight.dart';

class Fighter extends Equatable {
  final String fullname;
  final List<String> picture;
  final int wins;
  final int losses;
  final int draws;
  final int allStrikes;
  final int landedStrikes;
  final int allTakeDowns;
  final int landedTakeDowns;
  final List<Fight> fightHistory;
  const Fighter({
    this.fullname = "",
    this.picture = const [],
    this.wins = 0,
    this.losses = 0,
    this.draws = 0,
    this.allStrikes = 0,
    this.landedStrikes = 0,
    this.allTakeDowns = 0,
    this.landedTakeDowns = 0,
    this.fightHistory = const [],
  });

  Fighter copyWith({
    String? fullname,
    List<String>? picture,
    int? wins,
    int? losses,
    int? draws,
    int? allStrikes,
    int? landedStrikes,
    int? allTakeDowns,
    int? landedTakeDowns,
    List<Fight>? fightHistory,
  }) {
    return Fighter(
      fullname: fullname ?? this.fullname,
      picture: picture ?? this.picture,
      wins: wins ?? this.wins,
      losses: losses ?? this.losses,
      draws: draws ?? this.draws,
      allStrikes: allStrikes ?? this.allStrikes,
      landedStrikes: landedStrikes ?? this.landedStrikes,
      allTakeDowns: allTakeDowns ?? this.allTakeDowns,
      landedTakeDowns: landedTakeDowns ?? this.landedTakeDowns,
      fightHistory: fightHistory ?? this.fightHistory,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      fullname,
      picture,
      wins,
      losses,
      draws,
      allStrikes,
      landedStrikes,
      allTakeDowns,
      landedTakeDowns,
      fightHistory,
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullname': fullname,
      'picture': picture,
      'wins': wins,
      'losses': losses,
      'draws': draws,
      'allStrikes': allStrikes,
      'landedStrikes': landedStrikes,
      'allTakeDowns': allTakeDowns,
      'landedTakeDowns': landedTakeDowns,
      'fightHistory': fightHistory.map((x) {
        return x.toMap();
      }).toList(growable: false),
    };
  }

  factory Fighter.fromMap(Map<String, dynamic> map) {
    return Fighter(
      fullname: (map["fullname"] ?? '') as String,
      picture: List<String>.from(
        ((map['picture'] ?? const <String>[]) as List<String>),
      ),
      wins: (map["wins"] ?? 0) as int,
      losses: (map["losses"] ?? 0) as int,
      draws: (map["draws"] ?? 0) as int,
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
    );
  }
}
