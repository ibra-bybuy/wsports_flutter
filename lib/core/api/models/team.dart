import 'package:json_annotation/json_annotation.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../../../../core/models/team.dart';

part 'team.g.dart';

@JsonSerializable()
class TeamApi extends Team {
  @JsonKey(name: "lang")
  final String langApi;
  TeamApi({
    String name = '',
    String avatarUrl = '',
    this.langApi = "",
  }) : super(
          name: name,
          avatarUrl: avatarUrl,
          lang: LocalLang.getByString(langApi),
        );

  factory TeamApi.fromJson(Map<String, dynamic> json) =>
      _$TeamApiFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TeamApiToJson(this);
}
