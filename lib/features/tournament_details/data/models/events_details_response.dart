import 'package:json_annotation/json_annotation.dart';
import '../../../../core/api/models/event.dart';

part 'events_details_response.g.dart';

@JsonSerializable()
class EventsDetailsResponse {
  final int statusCode;
  final List<EventApi> data;
  const EventsDetailsResponse({
    this.statusCode = 0,
    this.data = const [],
  });

  factory EventsDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$EventsDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventsDetailsResponseToJson(this);
}
