import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/tournament.dart';

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
  final List<TournamentsResponseDtoDataItems> items;
  @JsonKey(name: 'meta')
  final TournamentsResponseDtoDataMeta meta;
  const TournamentsResponseDtoData({
    this.items = const [],
    this.meta = const TournamentsResponseDtoDataMeta(),
  });

  factory TournamentsResponseDtoData.fromJson(Map<String, dynamic> json) =>
      _$TournamentsResponseDtoDataFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentsResponseDtoDataToJson(this);

  TournamentsResponseDtoData copyWith({
    List<TournamentsResponseDtoDataItems>? items,
    TournamentsResponseDtoDataMeta? meta,
  }) {
    return TournamentsResponseDtoData(
      items: items ?? this.items,
      meta: meta ?? this.meta,
    );
  }
}

@JsonSerializable()
class TournamentsResponseDtoDataItems extends Tournament {
  @JsonKey(name: 'id')
  final int id;

  const TournamentsResponseDtoDataItems({
    this.id = 0,
    super.name,
  });

  factory TournamentsResponseDtoDataItems.fromJson(Map<String, dynamic> json) =>
      _$TournamentsResponseDtoDataItemsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TournamentsResponseDtoDataItemsToJson(this);

  @override
  TournamentsResponseDtoDataItems copyWith({
    int? id,
    String? name,
  }) {
    return TournamentsResponseDtoDataItems(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}

@JsonSerializable()
class TournamentsResponseDtoDataMeta {
  @JsonKey(name: 'totalItems')
  final int totalItems;
  @JsonKey(name: 'itemCount')
  final int itemCount;
  @JsonKey(name: 'itemsPerPage')
  final int itemsPerPage;
  @JsonKey(name: 'totalPages')
  final int totalPages;
  @JsonKey(name: 'currentPage')
  final int currentPage;
  const TournamentsResponseDtoDataMeta({
    this.totalItems = 0,
    this.itemCount = 0,
    this.itemsPerPage = 0,
    this.totalPages = 0,
    this.currentPage = 0,
  });

  factory TournamentsResponseDtoDataMeta.fromJson(Map<String, dynamic> json) =>
      _$TournamentsResponseDtoDataMetaFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentsResponseDtoDataMetaToJson(this);

  TournamentsResponseDtoDataMeta copyWith({
    int? totalItems,
    int? itemCount,
    int? itemsPerPage,
    int? totalPages,
    int? currentPage,
  }) {
    return TournamentsResponseDtoDataMeta(
      totalItems: totalItems ?? this.totalItems,
      itemCount: itemCount ?? this.itemCount,
      itemsPerPage: itemsPerPage ?? this.itemsPerPage,
      totalPages: totalPages ?? this.totalPages,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}
