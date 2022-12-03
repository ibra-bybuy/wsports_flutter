import 'package:json_annotation/json_annotation.dart';
import '../../../../core/models/event.dart';
import 'stream.dart';
import 'team.dart';

part 'event.g.dart';

@JsonSerializable()
class EventApi extends Event {
  final String endTime;
  final String type;
  final List<StreamApi> streams;
  EventApi({
    int id = 0,
    String name = '',
    String startTime = '',
    this.endTime = '',
    List<TeamApi> teams = const [],
    this.type = '',
    this.streams = const [],
  }) : super(
          id: id.toString(),
          name: name,
          startTime: startTime,
          teams: teams,
        );

  factory EventApi.fromJson(Map<String, dynamic> json) =>
      _$EventApiFromJson(json);

  Map<String, dynamic> toJson() => _$EventApiToJson(this);
}
