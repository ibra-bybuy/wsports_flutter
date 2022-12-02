// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../../models/event.dart';

class EventListState extends Equatable {
  final List<Event> items;
  const EventListState({
    this.items = const [],
  });

  EventListState copyWith({
    List<Event>? items,
  }) {
    return EventListState(
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

  factory EventListState.fromMap(Map<String, dynamic> map) {
    return EventListState(
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
