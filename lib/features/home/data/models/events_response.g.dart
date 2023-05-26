// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventsResponse _$EventsResponseFromJson(Map<String, dynamic> json) =>
    EventsResponse(
      success: json['success'] as bool? ?? false,
      data: json['data'] == null
          ? const EventsResponseData()
          : EventsResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventsResponseToJson(EventsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

EventsResponseData _$EventsResponseDataFromJson(Map<String, dynamic> json) =>
    EventsResponseData(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => EventApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pagination: json['pagination'] == null
          ? const MetaApi()
          : MetaApi.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventsResponseDataToJson(EventsResponseData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'pagination': instance.pagination,
    };
