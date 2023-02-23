// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/core/models/event_score.dart';

class EventsScoresState extends Equatable {
  final List<EventScore> items;
  const EventsScoresState({
    this.items = const [],
  });

  EventsScoresState copyWith({
    List<EventScore>? items,
  }) {
    return EventsScoresState(
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items.map((x) {
        return x.toMap();
      }).toList(growable: false),
    };
  }

  factory EventsScoresState.fromMap(Map<String, dynamic> map) {
    return EventsScoresState(
      items: List<EventScore>.from(
        ((map['items'] ?? const <EventScore>[]) as List).map<EventScore>((x) {
          return EventScore.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [items];
}
