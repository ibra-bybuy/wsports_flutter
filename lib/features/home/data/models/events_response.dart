import 'package:json_annotation/json_annotation.dart';

import '../../../../core/api/models/event.dart';
import '../../../../core/api/models/meta.dart';

part 'events_response.g.dart';

@JsonSerializable()
class EventsResponse {
  final bool success;
  final EventsResponseData data;
  const EventsResponse({
    this.success = false,
    this.data = const EventsResponseData(),
  });

  factory EventsResponse.fromJson(Map<String, dynamic> json) =>
      _$EventsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventsResponseToJson(this);
}

@JsonSerializable()
class EventsResponseData {
  final List<EventApi> items;
  final MetaApi pagination;
  const EventsResponseData({
    this.items = const [],
    this.pagination = const MetaApi(),
  });

  factory EventsResponseData.fromJson(Map<String, dynamic> json) =>
      _$EventsResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$EventsResponseDataToJson(this);
}
