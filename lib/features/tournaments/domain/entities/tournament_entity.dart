// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/core/models/pagination.dart';

import '../../../../core/models/tournament.dart';

class TournamentEntities extends Equatable {
  final List<Tournament> items;
  const TournamentEntities({this.items = const []});

  TournamentEntities copyWith({
    List<Tournament>? items,
    Pagination? pagination,
  }) {
    return TournamentEntities(
      items: items ?? this.items,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [items];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items.map((x) {
        return x.toMap();
      }).toList(growable: false),
    };
  }

  factory TournamentEntities.fromMap(Map<String, dynamic> map) {
    return TournamentEntities(
      items: List<Tournament>.from(
        ((map['items'] ?? const <Tournament>[]) as List).map<Tournament>((x) {
          return Tournament.fromMap(
              (x ?? Map<String, dynamic>.from({})) as Map<String, dynamic>);
        }),
      ),
    );
  }
}
