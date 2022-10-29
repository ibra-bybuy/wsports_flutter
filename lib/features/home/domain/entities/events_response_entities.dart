import 'package:equatable/equatable.dart';

import 'package:watch_sports/core/models/event.dart';

class EventsResponseEntities extends Equatable {
  final List<Event> items;
  const EventsResponseEntities({
    this.items = const [],
  });

  EventsResponseEntities copyWith({
    List<Event>? items,
  }) {
    return EventsResponseEntities(
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

  factory EventsResponseEntities.fromMap(Map<String, dynamic> map) {
    return EventsResponseEntities(
      items: List<Event>.from(
        ((map['items'] ?? const <Event>[]) as List).map<Event>((x) {
          return Event.fromMap(
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
