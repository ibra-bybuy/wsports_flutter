// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/i18n/i18n.dart';

class Team extends Equatable {
  final String name;
  final String avatarUrl;
  final int position;
  // enum
  final LocalLang lang;
  const Team({
    this.name = '',
    this.avatarUrl = '',
    this.position = 0,
    this.lang = LocalLang.eng,
  });

  Team copyWith({
    String? name,
    String? avatarUrl,
    int? position,
    LocalLang? lang,
  }) {
    return Team(
      name: name ?? this.name,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      position: position ?? this.position,
      lang: lang ?? this.lang,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'avatarUrl': avatarUrl,
      'position': position,
      'lang': lang.index,
    };
  }

  factory Team.fromMap(Map<String, dynamic> map) {
    return Team(
      name: (map["name"] ?? '') as String,
      avatarUrl: (map["avatarUrl"] ?? '') as String,
      position: (map["position"] ?? 0) as int,
      lang: LocalLang.values[(map['lang'] ?? 0) as int],
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, avatarUrl, position, lang];

  Map<String, dynamic> toJson() => toMap();
}
