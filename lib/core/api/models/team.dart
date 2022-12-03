import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/team.dart';

part 'team.g.dart';

@JsonSerializable()
class TeamApi extends Team {
  const TeamApi({
    String name = '',
    String avatarUrl = '',
  }) : super(name: name, avatarUrl: avatarUrl);

  factory TeamApi.fromJson(Map<String, dynamic> json) =>
      _$TeamApiFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TeamApiToJson(this);
}
