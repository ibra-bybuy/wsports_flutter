// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/core/models/tournament.dart';

class TournamentsState extends Equatable {
  final List<Tournament> items;
  const TournamentsState({
    this.items = const [],
  });

  TournamentsState copyWith({
    List<Tournament>? items,
  }) {
    return TournamentsState(
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

  factory TournamentsState.fromMap(Map<String, dynamic> map) {
    return TournamentsState(
      items: List<Tournament>.from(
        ((map['items'] ?? const <Tournament>[]) as List).map<Tournament>((x) {
          return Tournament.fromMap(
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
