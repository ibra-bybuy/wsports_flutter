// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventsResponse _$EventsResponseFromJson(Map<String, dynamic> json) =>
    EventsResponse(
      statusCode: json['statusCode'] as int? ?? 0,
      data: json['data'] == null
          ? const EventsResponseData()
          : EventsResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventsResponseToJson(EventsResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
    };

EventsResponseData _$EventsResponseDataFromJson(Map<String, dynamic> json) =>
    EventsResponseData(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => EventApi.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const MetaApi()
          : MetaApi.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventsResponseDataToJson(EventsResponseData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'meta': instance.meta,
    };
