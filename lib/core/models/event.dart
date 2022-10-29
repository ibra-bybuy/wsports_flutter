// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/core/models/team.dart';

class Event extends Equatable {
  final String name;
  final String startTime;
  final Team team1;
  final Team team2;
  const Event({
    this.name = '',
    this.startTime = "",
    this.team1 = const Team(),
    this.team2 = const Team(),
  });

  Event copyWith({
    String? name,
    String? startTime,
    Team? team1,
    Team? team2,
  }) {
    return Event(
      name: name ?? this.name,
      startTime: startTime ?? this.startTime,
      team1: team1 ?? this.team1,
      team2: team2 ?? this.team2,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'startTime': startTime,
      'team1': team1.toMap(),
      'team2': team2.toMap(),
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      name: (map["name"] ?? '') as String,
      startTime: (map["startTime"] ?? '') as String,
      team1: Team.fromMap((map["team1"] ?? Map<String, dynamic>.from({}))
          as Map<String, dynamic>),
      team2: Team.fromMap((map["team2"] ?? Map<String, dynamic>.from({}))
          as Map<String, dynamic>),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, startTime, team1, team2];

  DateTime? get startTimeDateTime => DateTime.tryParse(startTime);
}
