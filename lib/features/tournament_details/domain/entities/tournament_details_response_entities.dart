// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../../../core/models/event.dart';

class TournamentDetailsResponseEntities extends Equatable {
  final List<Event> items;
  const TournamentDetailsResponseEntities({
    this.items = const [],
  });

  TournamentDetailsResponseEntities copyWith({
    List<Event>? items,
  }) {
    return TournamentDetailsResponseEntities(
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

  factory TournamentDetailsResponseEntities.fromMap(Map<String, dynamic> map) {
    return TournamentDetailsResponseEntities(
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
