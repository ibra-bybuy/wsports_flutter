// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventsDetailsResponse _$EventsDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    EventsDetailsResponse(
      statusCode: json['statusCode'] as int? ?? 0,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => EventApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EventsDetailsResponseToJson(
        EventsDetailsResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
