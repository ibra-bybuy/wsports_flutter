// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/core/models/event.dart';
import 'package:watch_sports/core/models/pagination.dart';

class EventsResponseEntities extends Equatable {
  final List<Event> items;
  final Pagination pagination;
  const EventsResponseEntities({
    this.items = const [],
    this.pagination = const Pagination(),
  });

  EventsResponseEntities copyWith({
    List<Event>? items,
    Pagination? pagination,
  }) {
    return EventsResponseEntities(
      items: items ?? this.items,
      pagination: pagination ?? this.pagination,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items.map((x) {
        return x.toMap();
      }).toList(growable: false),
      'pagination': pagination.toMap(),
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
      pagination: Pagination.fromMap((map["pagination"] ??
          Map<String, dynamic>.from({})) as Map<String, dynamic>),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [items, pagination];
}
