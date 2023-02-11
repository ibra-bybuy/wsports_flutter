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
              ?.map((e) => TournamentApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const MetaApi()
          : MetaApi.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TournamentsResponseDtoDataToJson(
        TournamentsResponseDtoData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'meta': instance.meta,
    };
