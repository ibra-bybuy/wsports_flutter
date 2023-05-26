// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournaments_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentsResponseDto _$TournamentsResponseDtoFromJson(
        Map<String, dynamic> json) =>
    TournamentsResponseDto(
      success: json['success'] as bool? ?? false,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => TournamentApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TournamentsResponseDtoToJson(
        TournamentsResponseDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
