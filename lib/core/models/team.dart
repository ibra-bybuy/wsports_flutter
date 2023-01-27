// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/i18n/i18n.dart';

class Team extends Equatable {
  final String name;
  final String avatarUrl;

  // enum
  final LocalLang lang;
  const Team({
    this.name = '',
    this.avatarUrl = '',
    this.lang = LocalLang.eng,
  });

  Team copyWith({
    String? name,
    String? avatarUrl,
    LocalLang? lang,
  }) {
    return Team(
      name: name ?? this.name,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      lang: lang ?? this.lang,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'avatarUrl': avatarUrl,
      'lang': lang.index,
    };
  }

  factory Team.fromMap(Map<String, dynamic> map) {
    return Team(
      name: (map["name"] ?? '') as String,
      avatarUrl: (map["avatarUrl"] ?? '') as String,
      lang: LocalLang.values[(map['lang'] ?? 0) as int],
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, avatarUrl, lang];

  Map<String, dynamic> toJson() => toMap();
}
