// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/core/models/event.dart';

class EventListState extends Equatable {
  final List<Event> events;
  const EventListState({
    this.events = const [],
  });

  EventListState copyWith({
    List<Event>? events,
  }) {
    return EventListState(
      events: events ?? this.events,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events': events.map((x) {
        return x.toMap();
      }).toList(growable: false),
    };
  }

  factory EventListState.fromMap(Map<String, dynamic> map) {
    return EventListState(
      events: List<Event>.from(
        ((map['events'] ?? const <Event>[]) as List).map<Event>((x) {
          return Event.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [events];
}
