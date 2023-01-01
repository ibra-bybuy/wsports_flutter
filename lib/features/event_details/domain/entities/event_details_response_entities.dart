// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../core/models/event.dart';

class EventDetailsResponseEntities {
  final Event event;
  const EventDetailsResponseEntities({
    required this.event,
  });

  EventDetailsResponseEntities copyWith({
    Event? event,
  }) {
    return EventDetailsResponseEntities(
      event: event ?? this.event,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': event.toMap(),
    };
  }

  factory EventDetailsResponseEntities.fromMap(Map<String, dynamic> map) {
    return EventDetailsResponseEntities(
      event: Event.fromMap((map["event"] ?? Map<String, dynamic>.from({}))
          as Map<String, dynamic>),
    );
  }

  @override
  String toString() => 'EventDetailsResponseEntities(event: $event)';

  @override
  bool operator ==(covariant EventDetailsResponseEntities other) {
    if (identical(this, other)) return true;

    return other.event == event;
  }

  @override
  int get hashCode => event.hashCode;
}
