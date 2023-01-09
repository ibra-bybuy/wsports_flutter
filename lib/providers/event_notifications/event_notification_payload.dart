// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../core/models/event.dart';

class EventNotificationPayload extends Equatable {
  final List<Event> events;
  const EventNotificationPayload({
    this.events = const [],
  });

  static EventNotificationPayload? tryFromString(String str) {
    try {
      final map = json.decode(str);
      return EventNotificationPayload.fromMap(map);
    } catch (_) {
      return null;
    }
  }

  String toMapString() {
    return jsonEncode(toMap());
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [events];

  EventNotificationPayload copyWith({
    List<Event>? events,
  }) {
    return EventNotificationPayload(
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

  factory EventNotificationPayload.fromMap(Map<String, dynamic> map) {
    return EventNotificationPayload(
      events: List<Event>.from(
        ((map['events'] ?? const <Event>[]) as List).map<Event>((x) {
          return Event.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
    );
  }
}
