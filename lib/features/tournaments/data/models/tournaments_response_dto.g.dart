// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournaments_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentsResponseDto _$TournamentsResponseDtoFromJson(
        Map<String, dynamic> json) =>
    TournamentsResponseDto(
      statusCode: json['statusCode'] as int? ?? 0,
      data: json['data'] == null
          ? const TournamentsResponseDtoData()
          : TournamentsResponseDtoData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TournamentsResponseDtoToJson(
        TournamentsResponseDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
    };

TournamentsResponseDtoData _$TournamentsResponseDtoDataFromJson(
        Map<String, dynamic> json) =>
    TournamentsResponseDtoData(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => TournamentsResponseDtoDataItems.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const TournamentsResponseDtoDataMeta()
          : TournamentsResponseDtoDataMeta.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TournamentsResponseDtoDataToJson(
        TournamentsResponseDtoData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'meta': instance.meta,
    };

TournamentsResponseDtoDataItems _$TournamentsResponseDtoDataItemsFromJson(
        Map<String, dynamic> json) =>
    TournamentsResponseDtoDataItems(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$TournamentsResponseDtoDataItemsToJson(
        TournamentsResponseDtoDataItems instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

TournamentsResponseDtoDataMeta _$TournamentsResponseDtoDataMetaFromJson(
        Map<String, dynamic> json) =>
    TournamentsResponseDtoDataMeta(
      totalItems: json['totalItems'] as int? ?? 0,
      itemCount: json['itemCount'] as int? ?? 0,
      itemsPerPage: json['itemsPerPage'] as int? ?? 0,
      totalPages: json['totalPages'] as int? ?? 0,
      currentPage: json['currentPage'] as int? ?? 0,
    );

Map<String, dynamic> _$TournamentsResponseDtoDataMetaToJson(
        TournamentsResponseDtoDataMeta instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'itemCount': instance.itemCount,
      'itemsPerPage': instance.itemsPerPage,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
    };
