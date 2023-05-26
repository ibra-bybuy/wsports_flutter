import 'package:json_annotation/json_annotation.dart';

import '../../models/tournament.dart';

part 'tournament.g.dart';

@JsonSerializable()
class TournamentApi extends Tournament {
  const TournamentApi({
    super.code = "",
    super.name = "",
  });

  factory TournamentApi.fromJson(Map<String, dynamic> json) =>
      _$TournamentApiFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentApiToJson(this);
}
