// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/core/models/team.dart';

class Event extends Equatable {
  final String id;
  final String name;
  final String startTime;
  final List<Team> teams;
  const Event({
    this.id = "",
    this.name = '',
    this.startTime = "",
    this.teams = const [],
  });

  Event copyWith({
    String? id,
    String? name,
    String? startTime,
    List<Team>? teams,
  }) {
    return Event(
      id: id ?? this.id,
      name: name ?? this.name,
      startTime: startTime ?? this.startTime,
      teams: teams ?? this.teams,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'startTime': startTime,
      'teams': teams.map((x) {
        return x.toMap();
      }).toList(growable: false),
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: (map["id"] ?? '') as String,
      name: (map["name"] ?? '') as String,
      startTime: (map["startTime"] ?? '') as String,
      teams: List<Team>.from(
        ((map['teams'] ?? const <Team>[]) as List).map<Team>((x) {
          return Team.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, startTime, teams];

  DateTime? get startTimeDateTime => DateTime.tryParse(startTime);
}
