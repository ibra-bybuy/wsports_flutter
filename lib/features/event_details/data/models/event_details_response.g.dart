// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventDetailsResponse _$EventDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    EventDetailsResponse(
      statusCode: json['statusCode'] as int? ?? 0,
      data: EventApi.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventDetailsResponseToJson(
        EventDetailsResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
    };
