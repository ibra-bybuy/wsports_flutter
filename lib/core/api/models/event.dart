import 'package:json_annotation/json_annotation.dart';
import 'package:watch_sports/core/api/models/lang.dart';
import '../../../../core/models/event.dart';
import 'stream.dart';
import 'team.dart';

part 'event.g.dart';

@JsonSerializable()
class EventApi extends Event {
  final String uuid;
  final String startAt;
  final String endAt;
  final String avatarUrl;
  final String address;
  final LangApi lang;
  final String sport;
  const EventApi({
    this.uuid = "",
    String id = "",
    String name = '',
    List<TeamApi> teams = const [],
    this.startAt = '',
    this.endAt = '',
    this.avatarUrl = "",
    this.address = "",
    this.lang = const LangApi(),
    String hideElements = "",
    this.sport = '',
    List<StreamApi> streams = const [],
  }) : super(
          id: id,
          name: name,
          startTime: startAt,
          teams: teams,
          streams: streams,
          endTime: endAt,
          type: sport,
          hideElements: hideElements,
        );

  factory EventApi.fromJson(Map<String, dynamic> json) =>
      _$EventApiFromJson(json);

  Map<String, dynamic> toJson() => _$EventApiToJson(this);
}
