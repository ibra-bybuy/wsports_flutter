// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournaments_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentsRequestDto _$TournamentsRequestDtoFromJson(
        Map<String, dynamic> json) =>
    TournamentsRequestDto(
      date: json['date'] as String? ?? "",
      type: json['type'] as String? ?? "",
      page: json['page'] as int? ?? 0,
      limit: json['limit'] as int? ?? 0,
    );

Map<String, dynamic> _$TournamentsRequestDtoToJson(
        TournamentsRequestDto instance) =>
    <String, dynamic>{
      'date': instance.date,
      'type': instance.type,
      'page': instance.page,
      'limit': instance.limit,
    };
