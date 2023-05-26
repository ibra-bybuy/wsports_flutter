import 'package:json_annotation/json_annotation.dart';

import '../../../../core/api/models/tournament.dart';

part 'tournaments_response_dto.g.dart';

@JsonSerializable()
class TournamentsResponseDto {
  final bool success;
  final List<TournamentApi> data;
  const TournamentsResponseDto({
    this.success = false,
    this.data = const [],
  });

  factory TournamentsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TournamentsResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentsResponseDtoToJson(this);
}
