import 'package:json_annotation/json_annotation.dart';

import '../../../../core/api/models/meta.dart';
import '../../../../core/api/models/tournament.dart';

part 'tournaments_response_dto.g.dart';

@JsonSerializable()
class TournamentsResponseDto {
  @JsonKey(name: 'statusCode')
  final int statusCode;
  @JsonKey(name: 'data')
  final TournamentsResponseDtoData data;
  const TournamentsResponseDto({
    this.statusCode = 0,
    this.data = const TournamentsResponseDtoData(),
  });

  factory TournamentsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TournamentsResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentsResponseDtoToJson(this);

  TournamentsResponseDto copyWith({
    int? statusCode,
    TournamentsResponseDtoData? data,
  }) {
    return TournamentsResponseDto(
      statusCode: statusCode ?? this.statusCode,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable()
class TournamentsResponseDtoData {
  @JsonKey(name: 'items')
  final List<TournamentApi> items;
  @JsonKey(name: 'meta')
  final MetaApi meta;
  const TournamentsResponseDtoData({
    this.items = const [],
    this.meta = const MetaApi(),
  });

  factory TournamentsResponseDtoData.fromJson(Map<String, dynamic> json) =>
      _$TournamentsResponseDtoDataFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentsResponseDtoDataToJson(this);

  TournamentsResponseDtoData copyWith({
    List<TournamentApi>? items,
    MetaApi? meta,
  }) {
    return TournamentsResponseDtoData(
      items: items ?? this.items,
      meta: meta ?? this.meta,
    );
  }
}
