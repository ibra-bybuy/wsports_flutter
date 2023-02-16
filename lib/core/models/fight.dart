// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Fight extends Equatable {
  final String date;
  final int lastRound;
  final String time;
  final String byMethod;
  final List<FightHistoryItem> fighters;
  const Fight({
    this.date = "",
    this.lastRound = 0,
    this.time = "",
    this.byMethod = "",
    this.fighters = const [],
  });

  Fight copyWith({
    String? date,
    int? lastRound,
    String? time,
    String? byMethod,
    List<FightHistoryItem>? fighters,
  }) {
    return Fight(
      date: date ?? this.date,
      lastRound: lastRound ?? this.lastRound,
      time: time ?? this.time,
      byMethod: byMethod ?? this.byMethod,
      fighters: fighters ?? this.fighters,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      date,
      lastRound,
      time,
      byMethod,
      fighters,
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'lastRound': lastRound,
      'time': time,
      'byMethod': byMethod,
      'fighters': fighters.map((x) {
        return x.toMap();
      }).toList(growable: false),
    };
  }

  factory Fight.fromMap(Map<String, dynamic> map) {
    return Fight(
      date: (map["date"] ?? '') as String,
      lastRound: (map["lastRound"] ?? 0) as int,
      time: (map["time"] ?? '') as String,
      byMethod: (map["byMethod"] ?? '') as String,
      fighters: List<FightHistoryItem>.from(
        ((map['fighters'] ?? const <FightHistoryItem>[]) as List)
            .map<FightHistoryItem>((x) {
          return FightHistoryItem.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
    );
  }
}

class FightHistoryItem extends Equatable {
  final String name;
  final String picture;
  final bool won;
  const FightHistoryItem({
    this.name = "",
    this.picture = "",
    this.won = false,
  });

  FightHistoryItem copyWith({
    String? name,
    String? picture,
    bool? won,
  }) {
    return FightHistoryItem(
      name: name ?? this.name,
      picture: picture ?? this.picture,
      won: won ?? this.won,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, picture, won];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'picture': picture,
      'won': won,
    };
  }

  factory FightHistoryItem.fromMap(Map<String, dynamic> map) {
    return FightHistoryItem(
      name: (map["name"] ?? '') as String,
      picture: (map["picture"] ?? '') as String,
      won: (map["won"] ?? false) as bool,
    );
  }
}
