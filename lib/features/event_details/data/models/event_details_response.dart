import 'package:json_annotation/json_annotation.dart';
import '../../../../core/api/models/event.dart';

part 'event_details_response.g.dart';

@JsonSerializable()
class EventDetailsResponse {
  final int statusCode;
  final EventApi data;
  const EventDetailsResponse({
    this.statusCode = 0,
    required this.data,
  });

  factory EventDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$EventDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventDetailsResponseToJson(this);
}
