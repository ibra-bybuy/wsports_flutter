// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:watch_sports/core/models/team.dart';
import 'package:watch_sports/i18n/i18n.dart';

import 'stream.dart' as my;

enum EventType {
  mma("mma");

  final String str;
  const EventType(this.str);
}

class Event extends Equatable {
  final String id;
  final String name;
  final String startTime;
  final List<Team> teams;
  final List<my.Stream> streams;
  final String endTime;
  final String type;
  const Event({
    this.id = "",
    this.name = '',
    this.startTime = "",
    this.teams = const [],
    this.streams = const [],
    this.endTime = '',
    this.type = "",
  });

  Event copyWith({
    String? id,
    String? name,
    String? startTime,
    List<Team>? teams,
    List<my.Stream>? streams,
    String? endTime,
    String? type,
  }) {
    return Event(
      id: id ?? this.id,
      name: name ?? this.name,
      startTime: startTime ?? this.startTime,
      teams: teams ?? this.teams,
      streams: streams ?? this.streams,
      endTime: endTime ?? this.endTime,
      type: type ?? this.type,
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
      'streams': streams.map((x) {
        return x.toMap();
      }).toList(growable: false),
      'endTime': endTime,
      'type': type,
    };
  }

  String toMapString() {
    return jsonEncode(toMap());
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
      streams: List<my.Stream>.from(
        ((map['streams'] ?? const <my.Stream>[]) as List).map<my.Stream>((x) {
          return my.Stream.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
      endTime: (map["endTime"] ?? '') as String,
      type: (map["type"] ?? '') as String,
    );
  }

  static Event? tryFromString(String str) {
    try {
      final map = json.decode(str);
      return Event.fromMap(map);
    } catch (_) {
      return null;
    }
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      name,
      startTime,
      teams,
      streams,
      endTime,
      type,
    ];
  }

  DateTime? get startTimeDateTime => DateTime.tryParse(startTime)?.toLocal();
  DateTime? get endTimeDateTime => DateTime.tryParse(endTime)?.toLocal();

  bool get isStarted {
    return startTimeDateTime != null &&
        DateTime.now().isAfter(startTimeDateTime!);
  }

  bool get isFinished {
    final end = endTimeDateTime;

    if (end != null) {
      return DateTime.now().isAfter(end);
    }

    return false;
  }

  bool get isLive {
    return isStarted && !isFinished;
  }

  String get teamsToStr {
    return teams.map((e) => e.name).toList().join(" vs ");
  }

  bool get isMma {
    return type.toLowerCase().contains("mma");
  }

  List<Team> get engTeams {
    final myLangTeams =
        teams.where((element) => element.lang == LocalLang.eng).toList();

    myLangTeams.sort((a, b) => a.position.compareTo(b.position));

    if (myLangTeams.length >= 2) {
      return myLangTeams;
    }

    return teams;
  }

  List<Team> get localizedTeams {
    final myLangTeams = teams
        .where((element) => element.lang == localizationInstance.lang)
        .toList();

    myLangTeams.sort((a, b) => a.position.compareTo(b.position));

    if (myLangTeams.length >= 2) {
      return myLangTeams;
    }

    return teams;
  }
}
