// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventDetailsResponse _$EventDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    EventDetailsResponse(
      success: json['success'] as bool? ?? false,
      data: EventApi.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventDetailsResponseToJson(
        EventDetailsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
