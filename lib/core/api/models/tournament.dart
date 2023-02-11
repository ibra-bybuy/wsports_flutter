import 'package:json_annotation/json_annotation.dart';

import '../../models/tournament.dart';

part 'tournament.g.dart';

@JsonSerializable()
class TournamentApi extends Tournament {
  @JsonKey(name: 'id')
  final int id;

  const TournamentApi({
    this.id = 0,
    super.name,
  });

  factory TournamentApi.fromJson(Map<String, dynamic> json) =>
      _$TournamentApiFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentApiToJson(this);

  @override
  TournamentApi copyWith({
    int? id,
    String? name,
  }) {
    return TournamentApi(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
