// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/core/models/event.dart';

class EventScore extends Equatable {
  final String id;
  final String time;
  final int round;
  final List<EventScoreTeam> teams;
  // enum
  final EventType eventType;
  const EventScore({
    this.id = '',
    this.time = "",
    this.round = 0,
    this.teams = const [],
    required this.eventType,
  });

  EventScore copyWith({
    String? id,
    String? time,
    int? round,
    List<EventScoreTeam>? teams,
    EventType? eventType,
  }) {
    return EventScore(
      id: id ?? this.id,
      time: time ?? this.time,
      round: round ?? this.round,
      teams: teams ?? this.teams,
      eventType: eventType ?? this.eventType,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      time,
      round,
      teams,
      eventType,
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'time': time,
      'round': round,
      'teams': teams.map((x) {
        return x.toMap();
      }).toList(growable: false),
      'eventType': eventType.index,
    };
  }

  factory EventScore.fromMap(Map<String, dynamic> map) {
    return EventScore(
      id: (map["id"] ?? '') as String,
      time: (map["time"] ?? '') as String,
      round: (map["round"] ?? 0) as int,
      teams: List<EventScoreTeam>.from(
        ((map['teams'] ?? const <EventScoreTeam>[]) as List)
            .map<EventScoreTeam>((x) {
          return EventScoreTeam.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
      eventType: EventType.values[(map['eventType'] ?? 0) as int],
    );
  }

  String get firstScore {
    if (teams.isNotEmpty) {
      return teams.first.score;
    }

    return "";
  }

  String get lastScore {
    if (teams.length >= 2) {
      return teams[1].score;
    }

    return "";
  }

  String get joinTeamNames {
    return teams.map((e) => e.name).join(",");
  }
}

class EventScoreTeam extends Equatable {
  final String name;
  final String score;
  const EventScoreTeam({
    this.name = '',
    this.score = '',
  });

  EventScoreTeam copyWith({
    String? name,
    String? score,
  }) {
    return EventScoreTeam(
      name: name ?? this.name,
      score: score ?? this.score,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'score': score,
    };
  }

  factory EventScoreTeam.fromMap(Map<String, dynamic> map) {
    return EventScoreTeam(
      name: (map["name"] ?? '') as String,
      score: (map["score"] ?? '') as String,
    );
  }

  Map<String, dynamic> toJson() => toMap();

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, score];
}
