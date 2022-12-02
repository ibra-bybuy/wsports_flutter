import 'package:json_annotation/json_annotation.dart';
import '../../../../core/models/event.dart';
import 'stream.dart';
import 'team.dart';

part 'event.g.dart';

@JsonSerializable()
class EventApi extends Event {
  final String id;
  final String name;
  final String startTime;
  final String endTime;
  final List<TeamApi> teams;
  final String type;
  final List<StreamApi> streams;
  const EventApi({
    this.id = '',
    this.name = '',
    this.startTime = '',
    this.endTime = '',
    this.teams = const [],
    this.type = '',
    this.streams = const [],
  }) : super(
          id: id,
          name: name,
          startTime: startTime,
          teams: teams,
        );

  factory EventApi.fromJson(Map<String, dynamic> json) =>
      _$EventApiFromJson(json);

  Map<String, dynamic> toJson() => _$EventApiToJson(this);
}
