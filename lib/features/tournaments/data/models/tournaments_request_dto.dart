import 'package:json_annotation/json_annotation.dart';

part 'tournaments_request_dto.g.dart';

@JsonSerializable()
class TournamentsRequestDto {
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'page')
  final int page;
  @JsonKey(name: 'limit')
  final int limit;
  const TournamentsRequestDto({
    this.date = "",
    this.type = "",
    this.page = 0,
    this.limit = 0,
  });

  factory TournamentsRequestDto.fromJson(Map<String, dynamic> json) =>
      _$TournamentsRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentsRequestDtoToJson(this);

  TournamentsRequestDto copyWith({
    String? date,
    String? type,
    int? page,
    int? limit,
  }) {
    return TournamentsRequestDto(
      date: date ?? this.date,
      type: type ?? this.type,
      page: page ?? this.page,
      limit: limit ?? this.limit,
    );
  }
}
