import 'package:json_annotation/json_annotation.dart';
import 'package:watch_sports/core/api/models/lang.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../../../../core/models/team.dart';

part 'team.g.dart';

@JsonSerializable()
class TeamApi extends Team {
  final String id;
  @JsonKey(name: "lang")
  final LangApi langApi;
  TeamApi({
    this.id = "",
    String name = '',
    String avatarUrl = '',
    int position = 0,
    this.langApi = const LangApi(),
  }) : super(
          name: name,
          avatarUrl: avatarUrl,
          position: position,
          lang: LocalLang.getByString(langApi.code),
        );

  factory TeamApi.fromJson(Map<String, dynamic> json) =>
      _$TeamApiFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TeamApiToJson(this);
}
